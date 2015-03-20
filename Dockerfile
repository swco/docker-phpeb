FROM centos:5
MAINTAINER Michael Daffin <james1479@gmail.com>

WORKDIR /build
VOLUME /build

ENV NO_INTERACTION=1

ENTRYPOINT ["/setup.sh"]
CMD ["phpize && ./configure && make && make test"]

RUN echo "multilib_policy=best" >> /etc/yum.conf && \
    yum install -y epel-release && \
    yum install -y vim-enhanced boost141-devel cmake php53-devel \
                   autoconf automake binutils gcc gcc-c++ gettext \
                   libtool shtool make pkgconfig strace swig && \
    yum clean all

COPY setup.sh /setup.sh
