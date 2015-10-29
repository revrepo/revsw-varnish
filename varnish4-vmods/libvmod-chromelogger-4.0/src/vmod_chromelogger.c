#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <ctype.h>

#include "vrt.h"
#include "cache/cache.h"

#include "vcc_if.h"

#define DEBUG 1

#ifdef DEBUG                    // To print diagnostics to the error log
#define _DEBUG 1                // enable through gcc -DDEBUG
#else
#define _DEBUG 0
#endif

#define MAX_DATA 1024
#define MAX_BT 256

const char * const typeNames[] = {
    "log",
    "warn",
    "error",
    "info",
    "group",
    "groupEnd",
    "groupCollapsed",
    "table"
};

enum type_e {
    LOG,
    WARN,
    ERROR,
    INFO,
    GROUP,
    GROUPEND,
    GROUPCOLLAPSED,
    TABLE
};

struct entry {
	char data[MAX_DATA];
    char backtrace[MAX_BT];
    enum type_e type;
	VTAILQ_ENTRY(entry) list;
};

struct vmod_chromelogger {
	unsigned magic;
#define VMOD_CHROMELOGGER_MAGIC 0x4EF1FC23
	unsigned xid;
	VTAILQ_HEAD(, entry) logentries;
};

static pthread_key_t key;
static pthread_once_t key_is_initialized = PTHREAD_ONCE_INIT;

static void vmod_VSB_quote_real(struct vsb *s, const char *p);
static void vmod_VSB_base64_encode(struct vsb *s, const char *p, ssize_t len);

static void
mkkey(void) {
	AZ(pthread_key_create(&key, free));
}

int
init_function(struct vmod_priv *priv, const struct VCL_conf *conf) {
	pthread_once(&key_is_initialized, mkkey);
	return (0);
}

static void
clobj_clear(struct vmod_chromelogger *c) {
	c->magic = VMOD_CHROMELOGGER_MAGIC;
	VTAILQ_INIT(&c->logentries);
	c->xid = 0;
}

static unsigned
get_xid(const struct vrt_ctx *ctx) {
    /*
     * SORIN: don't use req->sp->vxid because it's not reliable (repeated values).
     * Use the log wid instead (the "2" in "*   << Request  >> 2" in varnishlog).
     */
    if (ctx->req)
        return ctx->req->vsl[0].wid;

    AN(ctx->bo);
    return ctx->bo->vsl->wid;
}

static struct vmod_chromelogger *
clobj_get(const struct vrt_ctx *ctx) {
	struct vmod_chromelogger *vcp = pthread_getspecific(key);

	if (!vcp) {
		vcp = malloc(sizeof *vcp);
		AN(vcp);
		clobj_clear(vcp);
		vcp->xid = get_xid(ctx);
		AZ(pthread_setspecific(key, vcp));
	}

	CHECK_OBJ_NOTNULL(vcp, VMOD_CHROMELOGGER_MAGIC);

	if (vcp->xid != get_xid(ctx)) {
		// Reuse previously allocated storage
		clobj_clear(vcp);
		vcp->xid = get_xid(ctx);
	}

	return (vcp);
}

/**
 * Add a new log message.
 */
void
vmod_log(const struct vrt_ctx *ctx, const char *s) {
    struct vmod_chromelogger *vcp = clobj_get(ctx);
    int c;
    struct entry *newentry;

    CHECK_OBJ_NOTNULL(vcp, VMOD_CHROMELOGGER_MAGIC);

        // Ignore empty lines
	if (strlen(s) == 0)
		return;

    newentry = (struct entry*)WS_Alloc(ctx->ws, sizeof(struct entry));
	AN(newentry);

    strncpy(newentry->data, s, MAX_DATA);
    newentry->data[MAX_DATA-1] = '\0';
    strcpy(newentry->backtrace, "FIXME");
    newentry->type = LOG;

	VTAILQ_INSERT_TAIL(&vcp->logentries, newentry, list);
}

static void
get_json_entries(struct vmod_chromelogger *vcp, struct vsb *json) {
    struct entry *e;
    struct entry *e2;

    VTAILQ_FOREACH_SAFE(e, &vcp->logentries, list, e2) {
        VSB_cat(json, "[[");
        vmod_VSB_quote_real(json, e->data);
        VSB_cat(json, "],");
        vmod_VSB_quote_real(json, e->backtrace);
        VSB_cat(json, ",\"");
        VSB_cat(json, typeNames[e->type]);
        VSB_cat(json, "\"],");
        VTAILQ_REMOVE(&vcp->logentries, e, list);
    }

    // Remove last comma
    json->s_len--;
}

const char * __match_proto__()
vmod_collect(const struct vrt_ctx *ctx, VCL_STRING extra_json) {
    struct vmod_chromelogger *vcp = clobj_get(ctx);
	struct vsb *json;
	struct vsb *output;
	unsigned v, u;
	char *p;

    CHECK_OBJ_NOTNULL(vcp, VMOD_CHROMELOGGER_MAGIC);

    if (VTAILQ_EMPTY(&vcp->logentries))
        return NULL;

	u = WS_Reserve(ctx->ws, 0);
	p = ctx->ws->f;

	json = VSB_new_auto();
	AN(json);

	VSB_cpy(json, "{\"version\": \"0.2\",\"columns\": [\"log\", \"backtrace\", \"type\"],\"rows\": [");

    get_json_entries(vcp, json);

    if (extra_json && *extra_json) {
        VSB_cat(json, ",");
        VSB_cat(json, extra_json);
    }

	VSB_cat(json, "]}");
	VSB_finish(json);

    // Base64 encode
	output = VSB_new_auto();
	AN(output);

    vmod_VSB_base64_encode(output, VSB_data(json), VSB_len(json));
	VSB_finish(output);

	v = VSB_len(output) + 1;
    if (v > u) {
        /* Too big; roll back */
        v = 0;
        p = NULL;
    }
    else
        strcpy(p, VSB_data(output));

	VSB_delete(output);
	VSB_delete(json);

	WS_Release(ctx->ws, v);
	return (p);
}

const char * __match_proto__()
vmod_collect_partial(const struct vrt_ctx *ctx) {
    struct vmod_chromelogger *vcp = clobj_get(ctx);
	struct vsb *json;
	unsigned v, u;
	char *p;

    CHECK_OBJ_NOTNULL(vcp, VMOD_CHROMELOGGER_MAGIC);

    if (VTAILQ_EMPTY(&vcp->logentries))
        return NULL;

	u = WS_Reserve(ctx->ws, 0);
	p = ctx->ws->f;

	json = VSB_new_auto();
	AN(json);

    get_json_entries(vcp, json);
	VSB_finish(json);

	v = VSB_len(json) + 1;
    if (v > u) {
        /* Too big; roll back */
        v = 0;
        p = NULL;
    }
    else
        strcpy(p, VSB_data(json));

	VSB_delete(json);

	WS_Release(ctx->ws, v);
	return (p);
}

/*
 * Quote a string
 */
static void
vmod_VSB_quote_real(struct vsb *s, const char *p)
{
	const char *q;
        int len = strlen(p);

	(void)VSB_putc(s, '"');
	for (q = p; q < p + len; q++) {
		switch (*q) {
		case ' ':
			(void)VSB_putc(s, *q);
			break;
		case '\\':
		case '"':
			(void)VSB_putc(s, '\\');
			(void)VSB_putc(s, *q);
			break;
		case '\n':
			(void)VSB_cat(s, "\\n");
			break;
		case '\r':
			(void)VSB_cat(s, "\\r");
			break;
		case '\t':
			(void)VSB_cat(s, "\\t");
			break;
		default:
			if (isgraph(*q))
				(void)VSB_putc(s, *q);
			else
				(void)VSB_printf(s, "\\%o", *q & 0xff);
			break;
		}
	}
	(void)VSB_putc(s, '"');
}

static void
vmod_VSB_base64_encode(struct vsb *s, const char *p, ssize_t len) {
    const static char* b64="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    ssize_t i;

    if (len == -1) {
        len = strlen(p);
    }

    for (i = 0; i < len - 2; i += 3) {
        VSB_putc(s, b64[p[i] >> 2]);
        VSB_putc(s, b64[((0x3 & p[i]) << 4) + (p[i+1] >> 4)]);
        VSB_putc(s, b64[((0xf & p[i+1]) << 2) + (p[i+2] >> 6)]);
        VSB_putc(s, b64[0x3f & p[i+2]]);
    }

    if (len % 3 == 2) {
        VSB_putc(s, b64[p[i] >> 2]);
        VSB_putc(s, b64[((0x3 & p[i]) << 4) + (p[i+1] >> 4)]);
        VSB_putc(s, b64[((0xf & p[i+1]) << 2)]);
        VSB_putc(s, '=');
    }

    if (len % 3 == 1) {
        VSB_putc(s, b64[p[i] >> 2]);
        VSB_putc(s, b64[((0x3 & p[i]) << 4)]);
        VSB_putc(s, '=');
        VSB_putc(s, '=');
    }
}
