#!/bin/bash
if [ -f /.built ]; then
	echo "RevSW Docker/PBuilder container: already initialized";
	bash
	bash -c "$@"
	exit
else
## 10-29: We do'nt use PBuilder anymore, docker is required only for avoid root access on Jenkins
##	echo "RevSW Docker/PBuilder container: need to build PBuilder baseimage"
##
##	mkdir -p /home/jenkins/workspace/Proxy_Build/enzo/ubuntu-pkg/pkg_build/
##	touch /home/jenkins/workspace/Proxy_Build/enzo/ubuntu-pkg/pkg_build/Packages
##	pbuilder create --debootstrapopts --variant=buildd || exit 1
	touch /.built
fi

echo "RevSW Docker/PBuilder container: running $@"
exec $@
