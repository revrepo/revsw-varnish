/*
 * NB:  This file is machine generated, DO NOT EDIT!
 *
 * Edit and run generate.py instead
 */

struct vrt_ctx;
#define VRT_CTX const struct vrt_ctx *ctx
struct req;
struct busyobj;
struct ws;
struct cli;
struct worker;

typedef int vcl_init_f(struct cli *);
typedef void vcl_fini_f(struct cli *);
typedef int vcl_func_f(VRT_CTX);

/* VCL Methods */
#define VCL_MET_RECV			(1U << 1)
#define VCL_MET_PIPE			(1U << 2)
#define VCL_MET_PASS			(1U << 3)
#define VCL_MET_HASH			(1U << 4)
#define VCL_MET_PURGE			(1U << 5)
#define VCL_MET_MISS			(1U << 6)
#define VCL_MET_HIT			(1U << 7)
#define VCL_MET_DELIVER			(1U << 8)
#define VCL_MET_SYNTH			(1U << 9)
#define VCL_MET_BACKEND_FETCH		(1U << 10)
#define VCL_MET_BACKEND_RESPONSE	(1U << 11)
#define VCL_MET_BACKEND_ERROR		(1U << 12)
#define VCL_MET_INIT			(1U << 13)
#define VCL_MET_FINI			(1U << 14)

#define VCL_MET_MAX			15

#define VCL_MET_MASK			0x7fff

/* VCL Returns */
#define VCL_RET_ABANDON			0
#define VCL_RET_DELIVER			1
#define VCL_RET_FETCH			2
#define VCL_RET_HASH			3
#define VCL_RET_LOOKUP			4
#define VCL_RET_OK			5
#define VCL_RET_PASS			6
#define VCL_RET_PIPE			7
#define VCL_RET_PURGE			8
#define VCL_RET_RESTART			9
#define VCL_RET_RETRY			10
#define VCL_RET_SYNTH			11

#define VCL_RET_MAX			12

struct VCL_conf {
	unsigned	magic;
#define VCL_CONF_MAGIC	0x7406c509	/* from /dev/random */

	struct director	**director;
	unsigned	ndirector;
	struct vrt_ref	*ref;
	unsigned	nref;
	unsigned	busy;
	unsigned	discard;

	unsigned	nsrc;
	const char	**srcname;
	const char	**srcbody;

	vcl_init_f	*init_vcl;
	vcl_fini_f	*fini_vcl;
	vcl_func_f	*recv_func;
	vcl_func_f	*pipe_func;
	vcl_func_f	*pass_func;
	vcl_func_f	*hash_func;
	vcl_func_f	*purge_func;
	vcl_func_f	*miss_func;
	vcl_func_f	*hit_func;
	vcl_func_f	*deliver_func;
	vcl_func_f	*synth_func;
	vcl_func_f	*backend_fetch_func;
	vcl_func_f	*backend_response_func;
	vcl_func_f	*backend_error_func;
	vcl_func_f	*init_func;
	vcl_func_f	*fini_func;

};
