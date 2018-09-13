/*
 * Copyright (c) 2015 Rev Software
 * All rights reserved.
 *
 * Author: Sorin Otescu <sorin@revsw.com>
 */

#include "config.h"

#include <stdlib.h>
#include <netdb.h>

#include "cache/cache.h"
#include "cache/cache_director.h"

#include "vrt.h"
#include "vsa.h"
#include "vtim.h"
#include "vcc_if.h"

#define MAX_IPS_PER_DOMAIN 64

#define LOGD(ctx, pattern, ...) \
	do { if (ctx->vsl) VSLb(ctx->vsl, SLT_Debug, pattern, ##__VA_ARGS__); } while (0)

#define LOGE(ctx, pattern, ...) \
    do { if (ctx->vsl) VSLb(ctx->vsl, SLT_Error, pattern, ##__VA_ARGS__); } while (0)

struct backend_clone {
    struct vrt_backend vrt_be;
    struct suckaddr *addr;
    char hostaddr[NI_MAXHOST];
    char port[NI_MAXSERV];

    /*
     * This is the actual "backend" (or rather, "simple director", which
     * wraps a single backend).
     */
    struct director *dir;
};

struct vmod_directors_rev_dns {
	unsigned magic;
#define VMOD_DIRECTORS_REV_DNS_MAGIC	0x391f43d2

    pthread_mutex_t mtx;

    /* This is the single VCL_BACKEND passed to set_backend() */
    VCL_BACKEND be;

    /* This is our director structure, for http1pipe() and healthy() */
    struct director *dir;

    unsigned nxt;

    /*
     * We keep N clones of the VCL backend here, where N is the number
     * of IP addresses for the backend hostname as returned by the DNS
     * query.
     * We will load balance between them.
     */
    struct backend_clone bes[MAX_IPS_PER_DOMAIN];
    unsigned be_count;

    double dns_ttl;
    double dns_t0;
};

static void _lock(struct vmod_directors_rev_dns *rev_dns)
{
	CHECK_OBJ_NOTNULL(rev_dns, VMOD_DIRECTORS_REV_DNS_MAGIC);
    AZ(pthread_mutex_lock(&rev_dns->mtx));
}

static void _unlock(struct vmod_directors_rev_dns *rev_dns)
{
	CHECK_OBJ_NOTNULL(rev_dns, VMOD_DIRECTORS_REV_DNS_MAGIC);
    AZ(pthread_mutex_unlock(&rev_dns->mtx));
}

static void _cleanup_clones(struct vmod_directors_rev_dns *rev_dns)
{
    unsigned i;

    for (i=0; i<rev_dns->be_count; ++i) {
        struct backend_clone *clone = &rev_dns->bes[i];

        if (clone->addr)
            free(clone->addr);
        if (clone->dir)
            VRT_delete_backend(NULL, &clone->dir);
    }

    /* Paranoia */
    memset(rev_dns->bes, 0, sizeof(rev_dns->bes));
    rev_dns->be_count = 0;
}

static void _clone_vrt_backend(const struct vrt_backend *vcl_be,
                               struct suckaddr *sua,
                               struct backend_clone *clone)
{
    const struct sockaddr *sa;
    socklen_t sl;
    const unsigned char *dummy;
    int error;
    int family;

    clone->addr = sua;
    clone->vrt_be = *vcl_be;

    family = VRT_VSA_GetPtr(sua, &dummy);
    sa = VSA_Get_Sockaddr(sua, &sl);

    error = getnameinfo(sa, sl, clone->hostaddr, sizeof(clone->hostaddr),
                        clone->port, sizeof(clone->port),
                        NI_NUMERICHOST | NI_NUMERICSERV);
    AZ(error);

    if (family == PF_INET) {
        /* IPv4 */
        clone->vrt_be.ipv4_suckaddr = clone->addr;
        clone->vrt_be.ipv4_addr = clone->hostaddr;
        clone->vrt_be.ipv6_suckaddr = NULL;
        clone->vrt_be.ipv6_addr = NULL;
    }
    else {
        /* IPv6 */
        clone->vrt_be.ipv4_suckaddr = NULL;
        clone->vrt_be.ipv4_addr = NULL;
        clone->vrt_be.ipv6_suckaddr = clone->addr;
        clone->vrt_be.ipv6_addr = clone->hostaddr;
    }
    clone->vrt_be.port = clone->port;
}

static int _dup_backend(const struct vrt_ctx *ctx,
                        struct vmod_directors_rev_dns *rev_dns,
                        VCL_BACKEND be)
{
    struct addrinfo *res, *res0, hint;
    int error;
    unsigned i;
    const struct vrt_backend *vrt;

    if (strcmp(be->name, "backend")) {
        LOGE(ctx, "Can't use rev_dns to wrap another director");
        return 1;
    }

    vrt = VRT_get_backend(NULL, be);
    AN(vrt);

    /*
     * Backends that are dynamically resolved keep the original host in .host.
     * For all others, .host is NULL.
     */
    AN(vrt->host);
    if (!vrt->host) {
        LOGE(ctx, "Can't use rev_dns with a static backend");
        return 1;
    }

    memset(&hint, 0, sizeof hint);
    hint.ai_family = PF_UNSPEC;
    hint.ai_socktype = SOCK_STREAM;

    error = getaddrinfo(vrt->host, vrt->port, &hint, &res0);
    if (error) {
        LOGE(ctx, "'%s' could not be resolved to an IP address: %s",
             vrt->host, gai_strerror(error));
        return 1;
    }

    /* Store the time of the DNS query */
    rev_dns->dns_t0 = VTIM_real();

    _cleanup_clones(rev_dns);

    LOGD(ctx, "Backend '%s' DNS resolution", vrt->vcl_name);

    for (res = res0; res; res = res->ai_next) {
        struct suckaddr *sua;
        struct backend_clone *clone;

        /* Is there still room ? */
        if (rev_dns->be_count == MAX_IPS_PER_DOMAIN)
            break;

        if (res->ai_family != PF_INET && res->ai_family != PF_INET6) {
            /* Unknown proto, ignore */
            continue;
        }

        sua = VSA_Malloc(res->ai_addr, res->ai_addrlen);

        /* Is this a duplicate address ? */
        for (i=0; i<rev_dns->be_count; ++i) {
            clone = &rev_dns->bes[i];
            if (!VSA_Compare(sua, clone->addr)) {
                free(sua);
                continue;
            }
        }

        /* Ok, we have a new address, let's create a backend clone */
        clone = &rev_dns->bes[rev_dns->be_count++];
        memset(clone, 0, sizeof(*clone));   /* paranoia */

        _clone_vrt_backend(vrt, sua, clone);

        clone->dir = VRT_new_backend(NULL, &clone->vrt_be);

        if (clone->vrt_be.ipv4_addr)
            LOGD(ctx, "  v4 '%s':'%s'", clone->vrt_be.ipv4_addr, clone->vrt_be.port);
        if (clone->vrt_be.ipv6_addr)
            LOGD(ctx, "  v6 '%s':'%s'", clone->vrt_be.ipv6_addr, clone->vrt_be.port);
    }

    return 0;
}

static unsigned
_any_clone_healthy(struct vmod_directors_rev_dns *rev_dns, const struct busyobj *bo,
                   double *changed)
{
	unsigned retval = 0;
	VCL_BACKEND be;
	unsigned u;
	double c;

    _lock(rev_dns);
	if (changed != NULL)
		*changed = 0;
	for (u = 0; u < rev_dns->be_count; u++) {
		be = rev_dns->bes[u].dir;
		CHECK_OBJ_NOTNULL(be, DIRECTOR_MAGIC);
		retval = be->healthy(be, bo, &c);
		if (changed != NULL && c > *changed)
			*changed = c;
		if (retval)
			break;
	}
    _unlock(rev_dns);
	return retval;
}

static unsigned __match_proto__(vdi_healthy_f)
vmod_rev_dns_healthy(const struct director *dir, const struct busyobj *bo, double *changed)
{
	struct vmod_directors_rev_dns *rev_dns;

	CAST_OBJ_NOTNULL(rev_dns, dir->priv, VMOD_DIRECTORS_REV_DNS_MAGIC);
	return _any_clone_healthy(rev_dns, bo, changed);
}

static void __match_proto__(vdi_http1pipe_f)
vmod_rev_dns_http1pipe(const struct director *dir, struct req *req, struct busyobj *bo)
{
	struct vmod_directors_rev_dns *rev_dns;
	unsigned u;
	VCL_BACKEND be = NULL;

	CAST_OBJ_NOTNULL(rev_dns, dir->priv, VMOD_DIRECTORS_REV_DNS_MAGIC);
	_lock(rev_dns);
	for (u = 0; u < rev_dns->be_count; u++) {
		rev_dns->nxt %= rev_dns->be_count;
		be = rev_dns->bes[rev_dns->nxt].dir;
		rev_dns->nxt++;
		CHECK_OBJ_NOTNULL(be, DIRECTOR_MAGIC);
		if (be->healthy(be, bo, NULL))
			break;
	}
	_unlock(rev_dns);
	be->http1pipe(be, req, bo);
}

VCL_VOID __match_proto__()
vmod_rev_dns__init(const struct vrt_ctx *ctx,
    struct vmod_directors_rev_dns **rev_dns_p, const char *vcl_name)
{
	struct vmod_directors_rev_dns *rev_dns;

	CHECK_OBJ_NOTNULL(ctx, VRT_CTX_MAGIC);
	AN(rev_dns_p);
	AZ(*rev_dns_p);
	ALLOC_OBJ(rev_dns, VMOD_DIRECTORS_REV_DNS_MAGIC);
	AN(rev_dns);
	*rev_dns_p = rev_dns;

    AZ(pthread_mutex_init(&rev_dns->mtx, NULL));
    rev_dns->dns_ttl = 3600;    /* default one hour */

    ALLOC_OBJ(rev_dns->dir, DIRECTOR_MAGIC);
    AN(rev_dns->dir);
    REPLACE(rev_dns->dir->vcl_name, vcl_name);
    rev_dns->dir->priv = rev_dns;
    rev_dns->dir->healthy = vmod_rev_dns_healthy;
    rev_dns->dir->http1pipe = vmod_rev_dns_http1pipe;
}

VCL_VOID __match_proto__()
vmod_rev_dns__fini(struct vmod_directors_rev_dns **rev_dns_p)
{
	struct vmod_directors_rev_dns *rev_dns;

	rev_dns = *rev_dns_p;
	*rev_dns_p = NULL;
	CHECK_OBJ_NOTNULL(rev_dns, VMOD_DIRECTORS_REV_DNS_MAGIC);
    _cleanup_clones(rev_dns);
    AZ(pthread_mutex_destroy(&rev_dns->mtx));
    FREE_OBJ(rev_dns->dir);
	FREE_OBJ(rev_dns);
}

VCL_VOID __match_proto__()
vmod_rev_dns_set_max_dns_ttl(const struct vrt_ctx *ctx,
    struct vmod_directors_rev_dns *rev_dns, VCL_DURATION ttl)
{
    CHECK_OBJ_NOTNULL(ctx, VRT_CTX_MAGIC);
    CHECK_OBJ_NOTNULL(rev_dns, VMOD_DIRECTORS_REV_DNS_MAGIC);

    rev_dns->dns_ttl = ttl;
}

VCL_BOOL __match_proto__()
vmod_rev_dns_set_backend(const struct vrt_ctx *ctx,
    struct vmod_directors_rev_dns *rev_dns, VCL_BACKEND be)
{
	CHECK_OBJ_NOTNULL(ctx, VRT_CTX_MAGIC);
	CHECK_OBJ_NOTNULL(rev_dns, VMOD_DIRECTORS_REV_DNS_MAGIC);

    _lock(rev_dns);

    if (_dup_backend(ctx, rev_dns, be)) {
        _unlock(rev_dns);
        return 0;
    }

    /* Keep a reference to the backend for when the DNS TTL expires */
    rev_dns->be = be;

    _unlock(rev_dns);
    return 1;
}

VCL_BACKEND __match_proto__()
vmod_rev_dns_backend(const struct vrt_ctx *ctx,
    struct vmod_directors_rev_dns *rev_dns)
{
    double now;

    CHECK_OBJ_NOTNULL(ctx, VRT_CTX_MAGIC);
	CHECK_OBJ_NOTNULL(rev_dns, VMOD_DIRECTORS_REV_DNS_MAGIC);

    _lock(rev_dns);
    /* First, let's see if our DNS results have expired */
    now = VTIM_real();
    if (rev_dns->be && rev_dns->dns_t0 + rev_dns->dns_ttl <= now) {
        /* Rerun the DNS query and generate potentially new backends */
        AZ(_dup_backend(ctx, rev_dns, rev_dns->be));
    }
    _unlock(rev_dns);

	return rev_dns->dir;
}
