FROM centos:5
MAINTAINER Michael Daffin <james1479@gmail.com>

WORKDIR /build
VOLUME /build

RUN echo "multilib_policy=best" >> /etc/yum.conf && \
    yum groupinstall -y 'Development Tools' && \
    yum install -y vim sudo cmake php-devel && \
    yum clean all

ENV NO_INTERACTION=1

ENTRYPOINT ["/setup.sh"]
CMD phpize && ./configure && make && make test

COPY setup.sh /setup.sh
