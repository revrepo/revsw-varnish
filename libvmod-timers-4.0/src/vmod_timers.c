#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#include "vrt.h"
#include "cache/cache.h"

#include "vcc_if.h"

#define DEBUG 1

#ifdef DEBUG                    // To print diagnostics to the error log
#define _DEBUG 1                // enable through gcc -DDEBUG
#else
#define _DEBUG 0
#endif

#if 0
#define NOW (ctx->now)
#else

double VTIM_real(void);
#define NOW VTIM_real()

#endif

/*  XXX This is all true for varnish 3.0.3 - the varnish 3 BRANCH is already structured,
    differently. Ectx->req->specially the session struct has changed, with more data moving into
    the request struct instead :(

    //*************************
    //  ReqEnd explained
    //*************************

    From: https://www.varnish-cache.org/trac/wiki/Varnishlog

    Typically, this looks like

      830 ReqEnd c 877345549 1233949945.075706005 1233949945.075754881 0.017112017 0.000022888 0.000025988

    The first number (877345549) is the XID, which you'll find in the X-Varnish header
    sent to the client.

    The second number (1233949945.075706005) is the time when we start processing a
    request. It is decimal seconds since epoch.

    The third number (1233949945.075754881) is the time when the request is completed. It
    is decimal seconds since epoch.

    The fourth number (0.017112017) is the time elapsed between the session actually being
    accept(2)-ed and the start of request processing for this request. Keep in mind that
    sessions are only accept()ed once, so this is time from the initial request was
    accepted until the current request begun processing (in other words: other requests
    from the same client/session could have been processed in the meanwhile).

    The fifth number (0.000022888) is the time elapsed from the start of the request
    processing until we start delivering the object to the client. For all practical
    purposes, this number is the backend rectx->req->sponse time.

    The sixth and last number (0.000025988) is the time from we start delivering the
    object until the request completes.

    //*************************
    //  ReqEnd Code
    //*************************

    From varnish-3.0.3:./bin/varnishd/cache_center.c:348

    dp = ctx->req->sp->t_rectx->req->sp - ctx->req->sp->t_req;
    da = ctx->req->sp->t_end - ctx->req->sp->t_rectx->req->sp;
    dh = ctx->req->sp->t_req - ctx->req->sp->t_open;

    WSL(ctx->req->sp->wrk, SLT_ReqEnd, ctx->req->sp->id, "%u %.9f %.9f %.9f %.9f %.9f",
        ctx->req->sp->xid, ctx->req->sp->t_req, ctx->req->sp->t_end, dh, dp, da);

    The session struct is documented in: varnish-3.0.3:./bin/varnishd/cache.h:524
    Important parts:

        // HTTP request
        struct http             *http;

        // Timestamps, all on TIM_real() timescale
        double                  t_open;
        double                  t_req;
        double                  t_rectx->req->sp;
        double                  t_end;

*/

// ************************
// Initialization functions
// ************************


typedef struct timersConfig {
	int multiplier;             // To go from seconds -> milli, micro or nanoseconds
} config_t;

int
init_function(struct vmod_priv *priv, const struct VCL_conf *conf)
{
    config_t *cfg;
    cfg             = malloc(sizeof(config_t));
    cfg->multiplier = 1000;     // default to milliseconds

    priv->priv      = cfg;

	return (0);
}

// **********************
// Config functions
// **********************

// Set the multiplication factor
void
vmod_unit( const struct vrt_ctx *ctx, struct vmod_priv *priv, const char *unit ) {
    config_t *cfg   = priv->priv;

    cfg->multiplier =
        strcasecmp( unit, "seconds"      ) == 0 ? 1                     :
        strcasecmp( unit, "milliseconds" ) == 0 ? 1000                  :
        strcasecmp( unit, "microseconds" ) == 0 ? 1000 * 1000           :
        strcasecmp( unit, "nanoseconds"  ) == 0 ? 1000 * 1000 * 1000    :
        1000;   // default back to milliseconds if you gave us garbage.
}

// **********************
// Utility functions
// **********************

// VCL doesn't let you do math - simple addition function
VCL_INT
vmod_add( const struct vrt_ctx *ctx, VCL_INT i, VCL_INT j ) {
    return i + j;
}

// VCL doesn't let you do math - simple subtraction function
VCL_INT
vmod_subtract( const struct vrt_ctx *ctx, VCL_INT i, VCL_INT j ) {
    return i - j;
}

// **********************
// Start/End functions
// **********************

// Timestamp of when the request started
VCL_REAL
vmod_req_start( const struct vrt_ctx *ctx, struct vmod_priv *priv ) {
    return (double) ctx->req->t_req;
}

// Timestamp of when the request started as a string representation.
// Varnish will represent the result differently by the type we use in the .vcc
VCL_REAL vmod_req_start_as_string() __attribute__((alias("vmod_req_start")));


// Timestamp of when the request finished
VCL_REAL
vmod_req_end( const struct vrt_ctx *ctx, struct vmod_priv *priv ) {
    config_t *cfg   = priv->priv;

    return (double) ctx->req->sp->t_idle;
}

// Timestamp of when the request started as a string representation.
// Varnish will represent the result differently by the type we use in the .vcc
double vmod_req_end_as_string() __attribute__((alias("vmod_req_end")));


// **********************
// Duration functions
// **********************

// Duration of Accept -> Sent to backend.
VCL_INT
vmod_req_handle_time( const struct vrt_ctx *ctx, struct vmod_priv *priv ) {
    config_t *cfg   = priv->priv;

    if (isnan(ctx->req->t_req) || isnan(ctx->req->t_first))
        return -1;

    return (int) ((ctx->req->t_req - ctx->req->sp->t_open) * cfg->multiplier);
}

// Duration of Sent to Backend -> First byte.
VCL_INT
vmod_req_response_time( const struct vrt_ctx *ctx, struct vmod_priv *priv ) {
    config_t *cfg   = priv->priv;

    // The response may not have been sent yet (say you're calling this
    // from vcl_recv) - Return -1 in that case.
    if (isnan(ctx->req->t_req))
        return -1;

    return (int) ((ctx->now - ctx->req->t_req) * cfg->multiplier);
}

// Duration of Request headers received -> now.
VCL_INT
vmod_req_processing_time( const struct vrt_ctx *ctx, struct vmod_priv *priv ) {
    config_t *cfg   = priv->priv;

    // The response may not have been sent yet (say you're calling this
    // from vcl_recv) - Return -1 in that case.
    if (isnan(ctx->req->t_first))
        return -1;

    return (int) ((NOW - ctx->req->t_first) * cfg->multiplier);
}

// Duration of First byte -> Last byte
// XXX since 'vcl_deliver' is the last point of entry for user facing code at
// the moment, the request will never be 'done' in the vcl users can access,
// meaning this will always return -1. I'm leaving it here for completeness
// sake, and it may become useful if there appears a vcl hook for after last
// byte.
VCL_INT
vmod_req_delivery_time( const struct vrt_ctx *ctx, struct vmod_priv *priv ) {
    config_t *cfg   = priv->priv;

    // The response may not have been sent yet (say you're calling this
    // from vcl_recv) - Return -1 in that case.
    if (isnan(ctx->req->t_prev) || isnan(ctx->req->sp->t_idle))
        return -1;

    int rv = (int) ((ctx->req->sp->t_idle - ctx->req->t_prev) * cfg->multiplier);
    return rv >= 0 ? rv : -1;
}
