FROM centos:6
MAINTAINER Michael Daffin <james1479@gmail.com>

WORKDIR /build
VOLUME /build

RUN yum groupinstall -y 'Development Tools' && \
    yum install -y vim sudo cmake php-devel && \
    yum clean all

ENV NO_INTERACTION=1

ENTRYPOINT ["/setup.sh"]
CMD phpize && ./configure && make && make test

COPY setup.sh /setup.sh
