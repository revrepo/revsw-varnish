/*
 * NB:  This file is machine generated, DO NOT EDIT!
 *
 * Edit vmod.vcc and run make instead
 */

struct VCL_conf;
struct vmod_priv;

/* Functions */
VCL_VOID vmod_set(VRT_CTX, VCL_STRING, VCL_STRING);
VCL_STRING vmod_get(VRT_CTX, VCL_STRING);
VCL_VOID vmod_global_set(VRT_CTX, VCL_STRING, VCL_STRING);
VCL_STRING vmod_global_get(VRT_CTX, VCL_STRING);
VCL_VOID vmod_set_int(VRT_CTX, VCL_STRING, VCL_INT);
VCL_INT vmod_get_int(VRT_CTX, VCL_STRING);
VCL_VOID vmod_set_string(VRT_CTX, VCL_STRING, VCL_STRING);
VCL_STRING vmod_get_string(VRT_CTX, VCL_STRING);
VCL_VOID vmod_set_real(VRT_CTX, VCL_STRING, VCL_REAL);
VCL_REAL vmod_get_real(VRT_CTX, VCL_STRING);
VCL_VOID vmod_set_duration(VRT_CTX, VCL_STRING, VCL_DURATION);
VCL_DURATION vmod_get_duration(VRT_CTX, VCL_STRING);
VCL_VOID vmod_set_ip(VRT_CTX, VCL_STRING, VCL_IP);
VCL_IP vmod_get_ip(VRT_CTX, VCL_STRING);
VCL_VOID vmod_clear(VRT_CTX);
VCL_VOID vmod_disable_implicit_clears(VRT_CTX);

int init_function(struct vmod_priv *, const struct VCL_conf *);
