# image for common yum needs (across containers).
# just trying to learn how to put image build files in a separate location

FROM dctest/main

RUN set -x  \
        && yum -y install gcc gcc-c++ make \
        && yum clean all
