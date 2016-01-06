FROM centos:6
MAINTAINER Michael Daffin <michael.daffin@switchconcepts.com>

WORKDIR /build
VOLUME /build

ENV NO_INTERACTION=1

CMD ["phpize && ./configure && make && make test"]

RUN yum install -y epel-release && \
    yum install -y php-devel php-pear autoconf automake binutils gcc gcc-c++ \
                   gettext libtool shtool make pkgconfig strace swig && \
    yum clean all
