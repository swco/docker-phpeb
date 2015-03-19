FROM centos:6
MAINTAINER Michael Daffin <james1479@gmail.com>

WORKDIR /build
VOLUME /build

ENV NO_INTERACTION=1

ENTRYPOINT ["/setup.sh"]
CMD ["phpize && ./configure && make && make test"]

RUN echo "multilib_policy=best" >> /etc/yum.conf && \
    yum install -y epel-release && \
    yum install -y vim boost-devel cmake php-devel \
                   autoconf automake binutils gcc gcc-c++ gettext \
                   libtool make pkgconfig strace swig && \
    yum clean all

COPY setup.sh /setup.sh
