AM_CPPFLAGS = @VMOD_INCLUDES@

vmoddir = @VMOD_DIR@
vmod_LTLIBRARIES = libvmod_header.la

libvmod_header_la_LDFLAGS = -module -export-dynamic -avoid-version

libvmod_header_la_SOURCES = \
	vcc_if.c \
	vcc_if.h \
	vmod_header.c

vcc_if.c vcc_if.h: @VMODTOOL@ $(top_srcdir)/src/vmod_header.vcc
	@VMODTOOL@ $(top_srcdir)/src/vmod_header.vcc

VMOD_TESTS = $(top_srcdir)/src/tests/*.vtc
.PHONY: $(VMOD_TESTS)

$(top_srcdir)/src/tests/*.vtc:
	@VARNISHTEST@ -Dvarnishd=@VARNISHD@ -Dvmod_topbuild=$(abs_top_builddir) $@

check: $(VMOD_TESTS)

EXTRA_DIST = \
	vmod_header.vcc \
	$(VMOD_TESTS)

CLEANFILES = $(builddir)/vcc_if.c $(builddir)/vcc_if.h \
	$(builddir)/vmod_header.man.rst \
	$(builddir)/vmod_header.rst
