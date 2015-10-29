FROM ubuntu:14.04

MAINTAINER Igor Kukushkin <igor@pbne.mygbiz.com>

#ADD .pbuilderrc /tmp/.pbuilderrc
RUN apt-get update && apt-get -y install build-essential pbuilder autoconf automake debhelper dh-virtualenv debootstrap devscripts libtool pkg-config nano git equivs \
binfmt-support clang clang-3.4 fontconfig-config fonts-dejavu-core geoip-bin \
  geoip-database libclang-common-3.4-dev libclang1-3.4 libexpat1-dev \
  libffi-dev libfontconfig1 libfontconfig1-dev libfreetype6 libfreetype6-dev \
  libgd-dev libgd2-noxpm-dev libgd3 libgeoip-dev libgeoip1 libice-dev libice6 \
  libjbig-dev libjbig0 libjpeg-dev libjpeg-turbo8 libjpeg-turbo8-dev libjpeg8 \
  libjpeg8-dev libllvm3.4 liblua5.1-0 liblua5.1-0-dev liblzma-dev libmhash-dev \
  libmhash2 libobjc-4.8-dev libobjc4 libpam0g-dev libpcre3-dev libpcrecpp0 \
  libperl-dev libperl5.18 libpng12-dev libpthread-stubs0-dev libreadline-dev \
  libreadline6-dev libsm-dev libsm6 libssl-dev libssl-doc libtiff5 \
  libtiff5-dev libtiffxx5 libtinfo-dev libvpx-dev libvpx1 libx11-dev \
  libx11-doc libxau-dev libxcb1-dev libxdmcp-dev libxml2-dev libxpm-dev \
  libxpm4 libxslt1-dev libxslt1.1 libxt-dev libxt6 llvm-3.4 llvm-3.4-dev \
  llvm-3.4-runtime x11-common x11proto-core-dev x11proto-input-dev \
  x11proto-kb-dev xorg-sgml-doctools xtrans-dev zlib1g-dev \
  autopoint dh-autoreconf dh-systemd docutils-common docutils-doc libbsd-dev \
  libedit-dev libjemalloc-dev libjemalloc1 liblcms2-2 libncurses5-dev \
  libpaper-utils libpaper1 libwebp5 libwebpmux1 python-docutils python-pil \
  python-pygments python-roman xsltproc

# RUN mkdir -p /home/jenkins && cp /tmp/.pbuilderrc /home/jenkins/ && cp /tmp/.pbuilderrc /root && mkdir -p /home/jenkins/workspace/Proxy_Build/enzo/ubuntu-pkg/pkg_build
RUN pip install git-up && pip install dnspython && pip install jinja2 && pip install jsonschema

ADD docker-inside-init.sh /docker-inside-init.sh

ENTRYPOINT ["/docker-inside-init.sh"] 

# How to use:
#  docker build -t revsw/pbuilder .
#  docker run -ti --privileged --name pbuilder -v /work/igorastds/rev/eng:/home/jenkins/workspace/Proxy_Build/ -w /home/jenkins/workspace/Proxy_Build/ revsw/pbuilder
# when container will enable shell access, run "cd docker; sh eng-build.sh" from it
