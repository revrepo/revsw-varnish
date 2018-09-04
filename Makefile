include revsw-opensource-common.mk

VARN4_SRC=varnish-4.1.10
VARM4_SRC=varnish4-vmods

.PHONY: varnish4-set-version varnish4 varnish4pkg varnish4vmods varnish4vmods-pkg check-varnish-repo undo-varnish-ver undo-vmod-ver docker

undo-varnish4-ver: CHANGELOG=$(VARN4_SRC)/debian/changelog
undo-varnish4-ver: undo-version

undo-vmod-ver: CHANGELOG=$(VARM4_SRC)/debian/changelog
undo-vmod-ver: undo-version

varnish4-set-version: VER_GREP_STRN=revsw-varnish4 (4.1.10-$(BUILD_MINOR))
varnish4-set-version: VER_TEMP_FILE=/tmp/varnish4.changes.$(shell date +%s)
varnish4-set-version: VER_CHANGELOG=$(VARN4_SRC)/debian/changelog
varnish4-set-version: set-version

varnish4-pkg: varnish4-set-version
	rm -f $(DEBS)/revsw-varnish4*.* $(DEBS)/revsw-libvarnish4*; 
	cd $(VARN4_SRC)/ && mk-build-deps -i -t "apt-get -y"  && dpkg-buildpackage -d -uc -us
	(mkdir -p $(DEBS)/ && mv revsw-*varnish4*.* $(DEBS)/ && chmod 666 $(DEBS)/*.*) || (echo "file move error $?"; true)

varnish4: docker
	@if [ ! -f $(DEBSINSIDE)/revsw-varnish4_4.1.10-$(BUILD_MINOR)_amd64.deb ]; then \
		echo "no proper deb in debs"; \
		(($(WRAPPER) make -f $(MAKEF) varnish4-pkg BUILD_MINOR=$(BUILD_MINOR)) || ($(WRAPPER) make -f $(MAKEF) undo-varnish4-ver clean; echo Failing build; false;)); \
	else \
		if [ $(shell find $(VARN4_SRC)/ -newer $(DEBSINSIDE)/revsw-varnish4_4.1.10-$(BUILD_MINOR)_amd64.deb 2>/dev/null | wc -l) -gt 0 ]; then \
			(($(WRAPPER) make -f $(MAKEF) varnish4-pkg undo-varnish4-ver BUILD_MINOR=$(BUILD_MINOR); $(WRAPPER) make -f $(MAKEF) clean) || ($(WRAPPER) make -f $(MAKEF) undo-varnish4-ver clean; echo Failing build; false)); \
		else \
		     echo "skipping varnish4"; \
		fi \
	fi

varnish4vmods-set-version: VER_GREP_STRN=revsw-varnish4-modules (4.1.10-$(BUILD_MINOR))
varnish4vmods-set-version: VER_TEMP_FILE=/tmp/varnish4mods.changes.$(shell date +%s)
varnish4vmods-set-version: VER_CHANGELOG=$(VARM4_SRC)/debian/changelog
varnish4vmods-set-version: set-version

varnish4vmods-pkg: varnish4vmods-set-version
	rm -f $(DEBS)/revsw4-varnish4-mods*.*
	cd $(VARM4_SRC)/ && mk-build-deps -i -t "apt-get -y" && dpkg-buildpackage -d -uc -us
	(mkdir -p $(DEBS)/ && mv revsw-varn*.* $(DEBS)/ && chmod 666 $(DEBS)/*.*) || (echo "file move error $?"; true)

varnish4vmods: docker
	@if [ ! -f $(DEBSINSIDE)/revsw-varnish4-mods-$(BUILD_MINOR)_amd64.deb ]; then \
		echo "no proper deb in debs"; \
		(($(WRAPPER) make -f $(MAKEF) varnish4vmods-pkg BUILD_MINOR=$(BUILD_MINOR)) || ($(WRAPPER) make -f $(MAKEF) undo-vmod-ver clean; echo Failing build; false)); \
	else \
		if [ $(shell find $(VARM4_SRC)/ -newer $(DEBSINSIDE)/revsw-varnish4-mods-$(BUILD_MINOR).deb 2>/dev/null | wc -l) -gt 0 ]; then \
			(($(WRAPPER) make -f $(MAKEF) check-varnish-repo varnish4vmods-pkg undo-vmod-ver BUILD_MINOR=$(BUILD_MINOR); $(WRAPPER) make -f $(MAKEF) clean) || ($(WRAPPER) make -f $(MAKEF) undo-vmod-ver clean; echo Failing build; false)); \
		else\
	    	echo "skipping varnish-vmods";\
		fi \
	fi


all: varnish4 varnish4vmods
