# base centos:latest image for the dctestmain service
FROM centos:latest
RUN mkdir /dctest
WORKDIR /dctest
ADD . /dctest

RUN set -x \
    && yum -y update \
    && yum clean all
