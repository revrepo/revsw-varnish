#include <stdlib.h>
#include <ctype.h>

#include "vrt.h"
#include "cache/cache.h"

#include "vcc_if.h"

enum VAR_TYPE {
	UNSET,
	STRING,
    STRING_LITERAL,
	INT,
	REAL,
	DURATION,
	BOOL
};

struct var {
	enum VAR_TYPE type;
	union {
		char *STRING;
		int INT;
		unsigned BOOL;
		double REAL;
		double DURATION;
	} value;
};

struct var_array {
    unsigned magic;
#define VAR_ARRAY_MAGIC 0x8A21A651
    unsigned count;
    struct var *items;
};

static struct var_array *
_get_var_array(const struct vrt_ctx *ctx, VCL_BOOL from_req)
{
    struct rev_vmod *vmod;
    struct var_array *vars;

    if (from_req) {
        AN(ctx->req);
        vmod = &ctx->req->vmod_revvar;
    } else {
        AN(ctx->bo);
        vmod = &ctx->bo->vmod_revvar;
    }

    CHECK_OBJ_NOTNULL(vmod, REV_VMOD_MAGIC);
    if (!VALID_OBJ(vmod, REV_VMOD_MAGIC))
        return NULL;

    vars = vmod->data;
    CHECK_OBJ_NOTNULL(vars, VAR_ARRAY_MAGIC);
    if (!VALID_OBJ(vars, VAR_ARRAY_MAGIC))
        return NULL;

    return vars;
}

static struct var *
_get_var(const struct vrt_ctx *ctx, VCL_BOOL from_req, VCL_INT idx)
{
    struct var_array *vars = _get_var_array(ctx, from_req);

	AN(vars);
    assert(idx >= 0 && idx < vars->count);

    if (vars && idx >= 0 && idx < vars->count)
        return &vars->items[idx];
	return NULL;
}

static struct var_array *
_alloc_var_array(struct ws *ws, unsigned count, VCL_BOOL zero_out)
{
    struct var_array *new_vars =
        (struct var_array *)WS_Alloc(ws, sizeof(*new_vars));

    AN(new_vars);
    if (new_vars) {
        new_vars->magic = VAR_ARRAY_MAGIC;
        new_vars->count = count;
        new_vars->items =
            (struct var *)WS_Alloc(ws, count * sizeof(struct var));

        if (zero_out)
            memset(new_vars->items, 0, count * sizeof(struct var));
    }

    return new_vars;
}

static void*
_duplicate_vars(struct ws *ws, void *data)
{
    struct var_array *vars = data;
    struct var_array *new_vars;
    unsigned i;

    CHECK_OBJ_NOTNULL(vars, VAR_ARRAY_MAGIC);

    new_vars = _alloc_var_array(ws, vars->count, 0);
    if (new_vars) {
        /* Copy variables into new array, making sure allocations are done in ws. */
        memcpy(new_vars->items, vars->items, vars->count * sizeof(struct var));
        for (i=0; i<new_vars->count; ++i) {
            struct var *v = &new_vars->items[i];

            /* We must copy the string into our own ws.
               STRING_LITERAL doesn't need to be copied, because it's a static value
               defined at compile time. */
            if (v->type == STRING)
                v->value.STRING = WS_Copy(ws, v->value.STRING, -1);
        }
    }

    return new_vars;
}

VCL_VOID
vmod_init_var_count(const struct vrt_ctx *ctx, VCL_INT count)
{
    struct rev_vmod *vmod;
    struct var *vars;

    /* Always initialize only the 'req' vars.
       They are copied to 'bo' anyway before 'vcl_backend_response'. */

    AN(ctx->req);
    vmod = &ctx->req->vmod_revvar;

    vmod->magic = REV_VMOD_MAGIC;
    vmod->data  = _alloc_var_array(ctx->ws, count, 1);
    vmod->dup_data_func = _duplicate_vars;
}

VCL_VOID
vmod_unset(const struct vrt_ctx *ctx, VCL_BOOL from_req, VCL_INT idx)
{
    struct var *v = _get_var(ctx, from_req, idx);
    if (v)
        v->type = UNSET;
}

VCL_VOID
vmod_set_string(const struct vrt_ctx *ctx, VCL_BOOL from_req, VCL_INT idx, VCL_STRING value)
{
    struct var *v = _get_var(ctx, from_req, idx);
    AN(v);

    if (v) {
        v->type = STRING;
        if (value == NULL)
            value = "";
        v->value.STRING = WS_Copy(ctx->ws, value, -1);
    }
}

VCL_VOID
vmod_set_string_allow_null(const struct vrt_ctx *ctx, VCL_BOOL from_req, VCL_INT idx, VCL_STRING value)
{
    struct var *v = _get_var(ctx, from_req, idx);
    AN(v);

    if (v) {
        v->type = STRING;
        if (value)
            v->value.STRING = WS_Copy(ctx->ws, value, -1);
        else
            v->value.STRING = NULL;
    }
}

VCL_VOID
vmod_set_string_literal(const struct vrt_ctx *ctx, VCL_BOOL from_req, VCL_INT idx, VCL_STRING value)
{
    struct var *v = _get_var(ctx, from_req, idx);
    AN(v);

    if (v) {
        v->type = STRING_LITERAL;
        if (value == NULL)
            value = "";
        /* 'value' is a constant, literal string which is "allocated" at compile time.
         * Don't need to dup it.
         */
        v->value.STRING = (char *)value;
    }
}

VCL_STRING
vmod_get_string(const struct vrt_ctx *ctx, VCL_BOOL from_req, VCL_INT idx)
{
    struct var *v = _get_var(ctx, from_req, idx);

	if (!v || (v->type != STRING && v->type != STRING_LITERAL))
		return NULL;
	return (v->value.STRING);
}


#define VMOD_SET_X(vcl_type_u, vcl_type_l, ctype) \
VCL_VOID \
vmod_set_##vcl_type_l(const struct vrt_ctx *ctx, VCL_BOOL from_req, VCL_INT idx, ctype value) \
{ \
    struct var *v = _get_var(ctx, from_req, idx); \
    AN(v); \
    if (v) { \
	    v->type = vcl_type_u; \
	    v->value.vcl_type_u = value; \
    } \
}

VMOD_SET_X(INT, int, VCL_INT)
VMOD_SET_X(REAL, real, VCL_REAL)
VMOD_SET_X(DURATION, duration, VCL_DURATION)
VMOD_SET_X(BOOL, bool, VCL_BOOL)

#define VMOD_GET_X(vcl_type_u, vcl_type_l, ctype) \
ctype \
vmod_get_##vcl_type_l(const struct vrt_ctx *ctx, VCL_BOOL from_req, VCL_INT idx) \
{ \
    struct var *v = _get_var(ctx, from_req, idx); \
	if (!v || v->type != vcl_type_u) \
		return 0; \
	return (v->value.vcl_type_u); \
}

VMOD_GET_X(INT, int, VCL_INT)
VMOD_GET_X(REAL, real, VCL_REAL)
VMOD_GET_X(DURATION, duration, VCL_DURATION)
VMOD_GET_X(BOOL, bool, VCL_BOOL)

VCL_BOOL
vmod_and_or_set_bool(const struct vrt_ctx *ctx, VCL_BOOL from_req, VCL_INT idx, VCL_BOOL value)
{
    struct var *v = _get_var(ctx, from_req, idx);
    AN(v);
    if (!v)
        return 0;

    if (v->type == UNSET) {
        v->type = BOOL;
        v->value.BOOL = value;
    } else {
        if (v->type != BOOL)
            return 0;
        v->value.BOOL = v->value.BOOL && value;
    }

    return v->value.BOOL;
}

VCL_BOOL
vmod_or_or_set_bool(const struct vrt_ctx *ctx, VCL_BOOL from_req, VCL_INT idx, VCL_BOOL value)
{
    struct var *v = _get_var(ctx, from_req, idx);
    AN(v);
    if (!v)
        return 0;

    if (v->type == UNSET) {
        v->type = BOOL;
        v->value.BOOL = value;
    } else {
		if (v->type != BOOL)
			return 0;
		v->value.BOOL = v->value.BOOL || value;
	}
	return v->value.BOOL;
}

VCL_VOID
vmod_clear(const struct vrt_ctx *ctx, VCL_BOOL from_req)
{
    struct var_array *vars = _get_var_array(ctx, from_req);
    AN(vars);

    if (vars)
        memset(vars->items, 0, vars->count * sizeof(struct var));
}

