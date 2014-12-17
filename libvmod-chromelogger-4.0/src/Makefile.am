# if VARNISHSRC is defined on the command-line, use that. Otherwise, build
# this the same as the modules that come with varnish (i.e. we're building
# within the varnish src dir itself, and $(top_srcdir) is the varnish source).
#

AM_CPPFLAGS = @VMOD_INCLUDES@

#vmoddir = /usr/local/lib/varnish/vmods
vmoddir = @VMOD_DIR@

vmod_LTLIBRARIES = libvmod_chromelogger.la

libvmod_chromelogger_la_LDFLAGS = -module -export-dynamic -avoid-version -shared

libvmod_chromelogger_la_SOURCES = \
	vcc_if.c \
	vcc_if.h \
	vmod_chromelogger.c


vcc_if.c vcc_if.h: @VMODTOOL@ $(top_srcdir)/src/vmod_chromelogger.vcc
	@VMODTOOL@ $(top_srcdir)/src/vmod_chromelogger.vcc

VMOD_TESTS = tests/*.vtc
.PHONY: $(VMOD_TESTS)

tests/*.vtc:
	@VARNISHTEST@ -Dvarnishd=@VARNISHD@ -Dvmod_topbuild=$(abs_top_builddir) $@

check: $(VMOD_TESTS)

EXTRA_DIST = \
	vmod_chromelogger.vcc \
	$(VMOD_TESTS)

CLEANFILES = $(builddir)/vcc_if.c $(builddir)/vcc_if.h 

