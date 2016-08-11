/*
 * NB:  This file is machine generated, DO NOT EDIT!
 *
 * Edit vmod.vcc and run make instead
 */

#include "config.h"
#include "vrt.h"
#include "vcc_if.h"
#include "vmod_abi.h"

/* Functions */
typedef VCL_VOID td_var_set(VRT_CTX, VCL_STRING, VCL_STRING);
typedef VCL_STRING td_var_get(VRT_CTX, VCL_STRING);
typedef VCL_VOID td_var_global_set(VRT_CTX, VCL_STRING, VCL_STRING);
typedef VCL_STRING td_var_global_get(VRT_CTX, VCL_STRING);
typedef VCL_VOID td_var_set_int(VRT_CTX, VCL_STRING, VCL_INT);
typedef VCL_INT td_var_get_int(VRT_CTX, VCL_STRING);
typedef VCL_VOID td_var_set_string(VRT_CTX, VCL_STRING, VCL_STRING);
typedef VCL_STRING td_var_get_string(VRT_CTX, VCL_STRING);
typedef VCL_VOID td_var_set_real(VRT_CTX, VCL_STRING, VCL_REAL);
typedef VCL_REAL td_var_get_real(VRT_CTX, VCL_STRING);
typedef VCL_VOID td_var_set_duration(VRT_CTX, VCL_STRING, VCL_DURATION);
typedef VCL_DURATION td_var_get_duration(VRT_CTX, VCL_STRING);
typedef VCL_VOID td_var_set_ip(VRT_CTX, VCL_STRING, VCL_IP);
typedef VCL_IP td_var_get_ip(VRT_CTX, VCL_STRING);
typedef VCL_VOID td_var_clear(VRT_CTX);
typedef VCL_VOID td_var_disable_implicit_clears(VRT_CTX);
struct Vmod_var_Func {

	/* Functions */
	td_var_set			*set;
	td_var_get			*get;
	td_var_global_set		*global_set;
	td_var_global_get		*global_get;
	td_var_set_int			*set_int;
	td_var_get_int			*get_int;
	td_var_set_string		*set_string;
	td_var_get_string		*get_string;
	td_var_set_real			*set_real;
	td_var_get_real			*get_real;
	td_var_set_duration		*set_duration;
	td_var_get_duration		*get_duration;
	td_var_set_ip			*set_ip;
	td_var_get_ip			*get_ip;
	td_var_clear			*clear;
	td_var_disable_implicit_clears	*disable_implicit_clears;

	/* Init/Fini */
	vmod_init_f	*_init;
};

static const struct Vmod_var_Func Vmod_Func ={

	/* Functions */
	vmod_set,
	vmod_get,
	vmod_global_set,
	vmod_global_get,
	vmod_set_int,
	vmod_get_int,
	vmod_set_string,
	vmod_get_string,
	vmod_set_real,
	vmod_get_real,
	vmod_set_duration,
	vmod_get_duration,
	vmod_set_ip,
	vmod_get_ip,
	vmod_clear,
	vmod_disable_implicit_clears,

	/* Init/Fini */
	init_function,
};

static const char Vmod_Proto[] =
	"/* Functions */\n"
	"typedef VCL_VOID td_var_set(VRT_CTX, VCL_STRING, VCL_STRING);\n"
	"typedef VCL_STRING td_var_get(VRT_CTX, VCL_STRING);\n"
	"typedef VCL_VOID td_var_global_set(VRT_CTX, VCL_STRING,\n"
	"    VCL_STRING);\n"
	"typedef VCL_STRING td_var_global_get(VRT_CTX, VCL_STRING);\n"
	"typedef VCL_VOID td_var_set_int(VRT_CTX, VCL_STRING, VCL_INT);\n"
	"typedef VCL_INT td_var_get_int(VRT_CTX, VCL_STRING);\n"
	"typedef VCL_VOID td_var_set_string(VRT_CTX, VCL_STRING,\n"
	"    VCL_STRING);\n"
	"typedef VCL_STRING td_var_get_string(VRT_CTX, VCL_STRING);\n"
	"typedef VCL_VOID td_var_set_real(VRT_CTX, VCL_STRING, VCL_REAL);\n"
	"typedef VCL_REAL td_var_get_real(VRT_CTX, VCL_STRING);\n"
	"typedef VCL_VOID td_var_set_duration(VRT_CTX, VCL_STRING,\n"
	"    VCL_DURATION);\n"
	"typedef VCL_DURATION td_var_get_duration(VRT_CTX, VCL_STRING);\n"
	"typedef VCL_VOID td_var_set_ip(VRT_CTX, VCL_STRING, VCL_IP);\n"
	"typedef VCL_IP td_var_get_ip(VRT_CTX, VCL_STRING);\n"
	"typedef VCL_VOID td_var_clear(VRT_CTX);\n"
	"typedef VCL_VOID td_var_disable_implicit_clears(VRT_CTX);\n"
	"\n"

	"struct Vmod_var_Func {\n"
	"\n"
	"	/* Functions */\n"
	"	td_var_set			*set;\n"
	"	td_var_get			*get;\n"
	"	td_var_global_set		*global_set;\n"
	"	td_var_global_get		*global_get;\n"
	"	td_var_set_int			*set_int;\n"
	"	td_var_get_int			*get_int;\n"
	"	td_var_set_string		*set_string;\n"
	"	td_var_get_string		*get_string;\n"
	"	td_var_set_real			*set_real;\n"
	"	td_var_get_real			*get_real;\n"
	"	td_var_set_duration		*set_duration;\n"
	"	td_var_get_duration		*get_duration;\n"
	"	td_var_set_ip			*set_ip;\n"
	"	td_var_get_ip			*get_ip;\n"
	"	td_var_clear			*clear;\n"
	"	td_var_disable_implicit_clears	*disable_implicit_clears;\n"
	"\n"
	"	/* Init/Fini */\n"
	"	vmod_init_f	*_init;\n"
	"};\n"
	"static struct Vmod_var_Func Vmod_var_Func;";

static const char * const Vmod_Spec[] = {
	/* Functions */
	"var.set\0"
	"Vmod_var_Func.set\0"
	    "VOID\0"
		"STRING\0"
		"STRING\0"
	"\0",

	"var.get\0"
	"Vmod_var_Func.get\0"
	    "STRING\0"
		"STRING\0"
	"\0",

	"var.global_set\0"
	"Vmod_var_Func.global_set\0"
	    "VOID\0"
		"STRING\0"
		"STRING\0"
	"\0",

	"var.global_get\0"
	"Vmod_var_Func.global_get\0"
	    "STRING\0"
		"STRING\0"
	"\0",

	"var.set_int\0"
	"Vmod_var_Func.set_int\0"
	    "VOID\0"
		"STRING\0"
		"INT\0"
	"\0",

	"var.get_int\0"
	"Vmod_var_Func.get_int\0"
	    "INT\0"
		"STRING\0"
	"\0",

	"var.set_string\0"
	"Vmod_var_Func.set_string\0"
	    "VOID\0"
		"STRING\0"
		"STRING\0"
	"\0",

	"var.get_string\0"
	"Vmod_var_Func.get_string\0"
	    "STRING\0"
		"STRING\0"
	"\0",

	"var.set_real\0"
	"Vmod_var_Func.set_real\0"
	    "VOID\0"
		"STRING\0"
		"REAL\0"
	"\0",

	"var.get_real\0"
	"Vmod_var_Func.get_real\0"
	    "REAL\0"
		"STRING\0"
	"\0",

	"var.set_duration\0"
	"Vmod_var_Func.set_duration\0"
	    "VOID\0"
		"STRING\0"
		"DURATION\0"
	"\0",

	"var.get_duration\0"
	"Vmod_var_Func.get_duration\0"
	    "DURATION\0"
		"STRING\0"
	"\0",

	"var.set_ip\0"
	"Vmod_var_Func.set_ip\0"
	    "VOID\0"
		"STRING\0"
		"IP\0"
	"\0",

	"var.get_ip\0"
	"Vmod_var_Func.get_ip\0"
	    "IP\0"
		"STRING\0"
	"\0",

	"var.clear\0"
	"Vmod_var_Func.clear\0"
	    "VOID\0"
	"\0",

	"var.disable_implicit_clears\0"
	"Vmod_var_Func.disable_implicit_clears\0"
	    "VOID\0"
	"\0",

	/* Init/Fini */
	"INIT\0Vmod_var_Func._init",
	0
};

extern const struct vmod_data Vmod_var_Data;

const struct vmod_data Vmod_var_Data = {
	.vrt_major = VRT_MAJOR_VERSION,
	.vrt_minor = VRT_MINOR_VERSION,
	.name = "var",
	.func = &Vmod_Func,
	.func_len = sizeof(Vmod_Func),
	.proto = Vmod_Proto,
	.spec = Vmod_Spec,
	.abi = VMOD_ABI_Version,
	.file_id = "OOLISRELTEWPWTWGHRMKRAFQEIGLOA@G",
};
