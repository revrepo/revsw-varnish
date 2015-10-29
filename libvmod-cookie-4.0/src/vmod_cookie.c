/*
Cookie VMOD for Varnish.

Simplifies handling of the Cookie request header.

Author: Lasse Karstensen <lasse@varnish-software.com>, July 2012.
*/

#include <stdlib.h>
#include <stdio.h>

#include "vrt.h"
#include "vqueue.h"
#include "cache/cache.h"

#include "vcc_if.h"

#define MAX_COOKIE_NAME 1024   /* name maxsize */
#define MAX_COOKIE_STRING 4096 /* cookie string maxlength */

struct cookie {
	char *name;
	char *value;
	VTAILQ_ENTRY(cookie) list;
};

struct whitelist {
	char name[MAX_COOKIE_NAME];
	VTAILQ_ENTRY(whitelist) list;
};

struct vmod_cookie {
	unsigned magic;
#define VMOD_COOKIE_MAGIC 0x4EE5FB2E
	unsigned xid;
	VTAILQ_HEAD(, cookie) cookielist;
};

static pthread_key_t key;
static pthread_once_t key_is_initialized = PTHREAD_ONCE_INIT;

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
cobj_clear(struct vmod_cookie *c) {
	c->magic = VMOD_COOKIE_MAGIC;
	VTAILQ_INIT(&c->cookielist);
	c->xid = 0;
}

static struct vmod_cookie *
cobj_get(const struct vrt_ctx *ctx) {
	struct vmod_cookie *vcp = pthread_getspecific(key);

    /*
     * SORIN: don't use req->sp->vxid because it's not reliable (repeated values).
     * Use the log wid instead (the "2" in "*   << Request  >> 2" in varnishlog).
     */

    if (!vcp) {
		vcp = malloc(sizeof *vcp);
		AN(vcp);
		cobj_clear(vcp);
		vcp->xid = ctx->req->vsl[0].wid;
		AZ(pthread_setspecific(key, vcp));
        VSLb(ctx->vsl, SLT_Debug, "cookie: new XID %u", vcp->xid);
	}

	CHECK_OBJ_NOTNULL(vcp, VMOD_COOKIE_MAGIC);

	if (vcp->xid != ctx->req->vsl[0].wid) {
        VSLb(ctx->vsl, SLT_Debug, "cookie: reusing entry for XID %u; new XID %u",
             vcp->xid, ctx->req->vsl[0].wid);
		// Reuse previously allocated storage
		cobj_clear(vcp);
		vcp->xid = ctx->req->vsl[0].wid;
	}

	return (vcp);
}

VCL_VOID
vmod_parse(const struct vrt_ctx *ctx, VCL_STRING cookieheader) {
	struct vmod_cookie *vcp = cobj_get(ctx);
	CHECK_OBJ_NOTNULL(vcp, VMOD_COOKIE_MAGIC);

	char tokendata[MAX_COOKIE_STRING];
	char *token, *tokstate, *value, *sepindex, *dataptr;

	int i = 0;

    VSLb(ctx->vsl, SLT_Debug, "cookie: parse for XID %u", ctx->req->vsl[0].wid);
    VSL_Flush(ctx->vsl, 0);

    /* If called twice during the same request, clean out old state */
	vmod_clean(ctx);

	VSLb(ctx->vsl, SLT_Debug, "cookie: cookie string is %lu bytes.", strlen(cookieheader));

	if (cookieheader == NULL || strlen(cookieheader) == 0) {
		VSLb(ctx->vsl, SLT_VCL_Log, "cookie: nothing to parse");
		return;
	}

	if (strlen(cookieheader) >= MAX_COOKIE_STRING) {
		VSLb(ctx->vsl, SLT_VCL_Log, "cookie: cookie string overflowed, abort");
		return;
	}

	/* strtok modifies source, fewer surprises. */
	strncpy(tokendata, cookieheader, sizeof(tokendata));
	dataptr = tokendata;

	while (1) {
		token = strtok_r(dataptr, ";", &tokstate);
		dataptr = NULL; /* strtok() wants NULL on subsequent calls. */

		if (token == NULL)
		    break;

		while (token[0] == ' ')
		    token++;

		sepindex = strchr(token, '=');
		if (sepindex == NULL) {
			/* No delimiter, this cookie is invalid. Next! */
			continue;
		}
		value = sepindex + 1;
		*sepindex = '\0';

		VSLb(ctx->vsl, SLT_Debug, "value length is %lu.", strlen(value));
		vmod_set(ctx, token, value);
		i++;
	}
	VSLb(ctx->vsl, SLT_VCL_Log, "cookie: parsed %i cookies.", i);
}


VCL_VOID
vmod_set(const struct vrt_ctx *ctx, VCL_STRING name, VCL_STRING value) {
	struct vmod_cookie *vcp = cobj_get(ctx);
	CHECK_OBJ_NOTNULL(vcp, VMOD_COOKIE_MAGIC);

	AN(name);
	AN(value);

	/* Empty cookies should be ignored. */
	if (strlen(name) == 0 || strlen(value) == 0) {
		return;
	}

	if (strlen(name) + 1 >= MAX_COOKIE_NAME) {
		VSLb(ctx->vsl, SLT_VCL_Log, "cookie: cookie string overflowed");
		return;
	}

	struct cookie *cookie;
	VTAILQ_FOREACH(cookie, &vcp->cookielist, list) {
		if (strcmp(cookie->name, name) == 0) {
			cookie->value = WS_Printf(ctx->ws, "%s", value);
			return;
		}
	}

	struct cookie *newcookie = (struct cookie *)WS_Alloc(ctx->ws, sizeof(struct cookie));
	if (newcookie == NULL) {
		VSLb(ctx->vsl, SLT_VCL_Log, "cookie: unable to get storage for cookie");
		return;
	}
	newcookie->name = WS_Printf(ctx->ws, "%s", name);
	newcookie->value = WS_Printf(ctx->ws, "%s", value);

	VTAILQ_INSERT_TAIL(&vcp->cookielist, newcookie, list);
}

VCL_BOOL
vmod_isset(const struct vrt_ctx *ctx, const char *name) {
	struct vmod_cookie *vcp = cobj_get(ctx);
	CHECK_OBJ_NOTNULL(vcp, VMOD_COOKIE_MAGIC);

	struct cookie *cookie;
	VTAILQ_FOREACH(cookie, &vcp->cookielist, list) {
		if (strcmp(cookie->name, name) == 0) {
			return 1;
		}
	}
	return 0;
}

VCL_STRING
vmod_get(const struct vrt_ctx *ctx, VCL_STRING name) {
	struct vmod_cookie *vcp = cobj_get(ctx);
	CHECK_OBJ_NOTNULL(vcp, VMOD_COOKIE_MAGIC);

	struct cookie *cookie;
	VTAILQ_FOREACH(cookie, &vcp->cookielist, list) {
		if (strcmp(cookie->name, name) == 0) {
			return (cookie->value);
		}
	}
	return (NULL);
}


VCL_VOID
vmod_delete(const struct vrt_ctx *ctx, VCL_STRING name) {
	struct vmod_cookie *vcp = cobj_get(ctx);
	CHECK_OBJ_NOTNULL(vcp, VMOD_COOKIE_MAGIC);

	struct cookie *cookie;
	VTAILQ_FOREACH(cookie, &vcp->cookielist, list) {
		if (strcmp(cookie->name, name) == 0) {
			VTAILQ_REMOVE(&vcp->cookielist, cookie, list);
			/* No way to clean up storage, let ws reclaim do it. */
			break;
		}
	}
}

VCL_VOID
vmod_clean(const struct vrt_ctx *ctx) {
	struct vmod_cookie *vcp = cobj_get(ctx);
	CHECK_OBJ_NOTNULL(vcp, VMOD_COOKIE_MAGIC);

	struct cookie *cookie, *c_safe;
	VTAILQ_FOREACH_SAFE(cookie, &vcp->cookielist, list, c_safe) {
		VTAILQ_REMOVE(&vcp->cookielist, cookie, list);
	}
}

static VCL_VOID
_filter_except_or_only(const struct vrt_ctx *ctx, VCL_STRING whitelist_s, VCL_BOOL except) {
	char buf[MAX_COOKIE_STRING];
	struct cookie *cookieptr;
	char *tokptr, *saveptr;
	int whitelisted = 0;
	struct vmod_cookie *vcp = cobj_get(ctx);
	struct whitelist *whentry;

	VTAILQ_HEAD(, whitelist) whitelist_head;
	VTAILQ_INIT(&whitelist_head);
	CHECK_OBJ_NOTNULL(vcp, VMOD_COOKIE_MAGIC);

	strcpy(buf, whitelist_s);
	tokptr = strtok_r(buf, ",", &saveptr);
	if (!tokptr) return;

	/* Parse the supplied whitelist. */
	while (1) {
		whentry = malloc(sizeof(struct whitelist));
		AN(whentry);
		strcpy(whentry->name, tokptr);
		VTAILQ_INSERT_TAIL(&whitelist_head, whentry, list);
		tokptr = strtok_r(NULL, ",", &saveptr);
		if (!tokptr) break;
	}

	/* Filter existing cookies that isn't in the whitelist. */
	VTAILQ_FOREACH(cookieptr, &vcp->cookielist, list) {
		whitelisted = 0;
		VTAILQ_FOREACH(whentry, &whitelist_head, list) {
			if (strlen(cookieptr->name) == strlen(whentry->name) &&
			    strcmp(cookieptr->name, whentry->name) == 0) {
				whitelisted = 1;
				break;
			}
		}
		if (except ^ whitelisted) {
			VTAILQ_REMOVE(&vcp->cookielist, cookieptr, list);
		}
	}

	VTAILQ_FOREACH(whentry, &whitelist_head, list) {
		VTAILQ_REMOVE(&whitelist_head, whentry, list);
		free(whentry);
	}
}


VCL_VOID
vmod_filter_except(const struct vrt_ctx *ctx, VCL_STRING whitelist_s) {
    _filter_except_or_only(ctx, whitelist_s, 1);
}


VCL_VOID
vmod_filter_only(const struct vrt_ctx *ctx, VCL_STRING whitelist_s) {
    _filter_except_or_only(ctx, whitelist_s, 0);
}


VCL_STRING
vmod_get_string(const struct vrt_ctx *ctx) {
	struct cookie *curr;
	struct vsb *output;
	unsigned v, u;
	char *p;
	struct vmod_cookie *vcp = cobj_get(ctx);
	CHECK_OBJ_NOTNULL(vcp, VMOD_COOKIE_MAGIC);

	output = VSB_new_auto();
	AN(output);

	VTAILQ_FOREACH(curr, &vcp->cookielist, list) {
		VSB_printf(output, "%s=%s; ", curr->name, curr->value);
	}
	VSB_trim(output);
	VSB_finish(output);
	v = 1 + VSB_len(output);

	u = WS_Reserve(ctx->ws, 0);
	p = ctx->ws->f;
	strcpy(p, VSB_data(output));

	VSB_delete(output);

	if (v > u) {
		WS_Release(ctx->ws, 0);
		VSLb(ctx->vsl, SLT_VCL_Log, "cookie: Workspace overflowed");
		return (NULL);
	}
	WS_Release(ctx->ws, v);
	return (p);
}


VCL_STRING
vmod_format_rfc1123(const struct vrt_ctx *ctx, VCL_TIME ts, VCL_DURATION duration) {
        return VRT_TIME_string(ctx, ts + duration);
}

