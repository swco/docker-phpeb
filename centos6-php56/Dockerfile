FROM centos:6
MAINTAINER Michael Daffin <james1479@gmail.com>

WORKDIR /build
VOLUME /build

ENV NO_INTERACTION=1

CMD ["phpize && ./configure && make && make test"]

RUN yum install -y epel-release && \
    yum install -y https://mirror.webtatic.com/yum/el6/latest.rpm && \
    yum install -y php56w-devel php56w-pear autoconf automake binutils gcc gcc-c++ \
                   gettext libtool shtool make pkgconfig strace swig boost-devel && \
    yum clean all
