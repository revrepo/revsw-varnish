AM_CPPFLAGS = @VMOD_INCLUDES@

vmoddir = @VMOD_DIR@
vmod_LTLIBRARIES = libvmod_var.la

libvmod_var_la_LDFLAGS = -module -export-dynamic -avoid-version -shared

libvmod_var_la_SOURCES = \
	vcc_if.c \
	vcc_if.h \
	vmod_var.c

vcc_if.c vcc_if.h: @VMODTOOL@ $(top_srcdir)/src/vmod_var.vcc
	@VMODTOOL@ $(top_srcdir)/src/vmod_var.vcc

VMOD_TESTS =  $(top_srcdir)/src/tests/*.vtc
.PHONY: $(VMOD_TESTS)

$(top_srcdir)/src/tests/*.vtc:
	@VARNISHTEST@ -Dvarnishd=@VARNISHD@ -Dvmod_topbuild=$(abs_top_builddir) $@

check: $(VMOD_TESTS)

EXTRA_DIST = \
	vmod_var.vcc \
	$(VMOD_TESTS)

CLEANFILES = $(builddir)/vcc_if.c $(builddir)/vcc_if.h \
	$(builddir)/vmod_var.man.rst \
	$(builddir)/vmod_var.rst
