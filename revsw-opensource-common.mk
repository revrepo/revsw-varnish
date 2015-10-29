BUILD_MINOR?=1
DEBSINSIDE?=debs
DEBS?=/work/$(DEBSINSIDE)
MAKEF=$(word 1,$(MAKEFILE_LIST))
DATE_STAMP=$(shell date "+%a, %d %b %Y %H:%M:%S %z")
DIR=$(shell pwd)
DOCKER_BIN=docker
# set it to -ti when doing non-Jenkins build
INTERACTIVE?=
DOCKER=docker run --rm $(INTERACTIVE) -v $(DIR):/work -w /work -e IN_DOCKER=true $(BUILDER)
#WRAPPER=$(DOCKER)
WRAPPER=sudo
BUILDER=revsw_proxy_builder_v6

docker: 
ifeq ($(IN_DOCKER),"true")
	@echo "Inside docker: skipping container check."
else

	@/bin/sh -c 'export x=`$(DOCKER_BIN) images -a|grep $(BUILDER)|wc -l` || x=wtf; if [ $$x -lt 1 ]; then false; fi' || (echo "Have to rebuild $(BUILDER)"; $(DOCKER_BIN) build -t $(BUILDER) -f Dockerfile .)
endif

CHANGELOG=/dev/null
undo-version:
	@git checkout $(CHANGELOG)

VER_TEMP_FILE=/dev/null
VER_GREP_STRN="null (0.0.0-$(BUILD_MINOR))"
VER_CHANGELOG=/dev/null
set-version:        
	echo "Checking version: $(VER_GREP_STRN)"
	@if [ $(shell grep "$(VER_GREP_STRN)" $(VER_CHANGELOG) | wc -l) -gt 0 ]; then \
		echo component: changelog has entry; \
		else echo component: no changelog entry for entry; rm -f $(VER_TEMP_FILE); echo "$(VER_GREP_STRN) unstable; urgency=medium\n  * CI Build $(BUILD_MINOR).\n -- Igor Kukushkin <igor@pbne.mygbiz.com>  $(DATE_STAMP)\n" >> $(VER_TEMP_FILE);cat $(VER_CHANGELOG) >> $(VER_TEMP_FILE); mv $(VER_TEMP_FILE) $(VER_CHANGELOG); \
	fi

PATTERN?=dev-null_0.0.0-$(BUILD_MINOR)_amd64.deb
SRC?=dev-null-0.0.0

build-if-need-status:
	@if [ ! -f $(DEBSINSIDE)/$(PATTERN) ]; then \
		echo "1"; exit;\
	else \
		if [ $(shell find $(SRC)/ -newer $(DEBSINSIDE)/$(PATTERN) 2>/dev/null | wc -l) -gt 0 ]; then \
			echo "1"; exit;\
		else \
			echo "0"; \
		fi;\
	fi

clean:
	@git clean -fd .

check-varnish-repo:
	@mkdir -p $(DEBS) && cd $(DEBS) && dpkg-scanpackages . > Packages && rm -f *.bz2 && bzip2 -kf Packages
	@if [ $(shell grep "$(DEBS)" /etc/apt/sources.list 2>/dev/null | wc -l) -lt 1 ]; then \
		echo "Updating repository list to point to $(DEBS)"; \
		echo "deb [trusted=yes] file://$(DEBS) /" >> /etc/apt/sources.list; cat /etc/apt/sources.list;\
	fi
	@apt-get update;


define BUILD_IF_NEED_STATUS
	@if [ ! -f $(DEBSINSIDE)/$(1) ]; then echo "no proper deb in debs"; $(WRAPPER) make -f $(MAKEF) $(3); fi
	@if [[ $(shell find $(2)/ -newer $(DEBSINSIDE)/$(1) | wc -l) -gt 0 ]]; then \
		($(WRAPPER) make -f $(MAKEF) $(3) $(4) || $(WRAPPER) make -f $(MAKEF) $(4)); \
	else\
	     echo "skipping nginx";\
	fi
endef
