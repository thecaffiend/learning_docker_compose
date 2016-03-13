FROM centos:latest
RUN mkdir /dctest
WORKDIR /dctest
ADD . /dctest
