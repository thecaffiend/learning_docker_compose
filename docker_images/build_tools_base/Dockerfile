# image for common build-tools needs (across descendant containers).
# just trying to learn how to put image build files in a separate location

FROM dctest/base

# install tools needed by images that will be based on this one (that need
# build tools and libraries).
RUN set -x  \
    && yum -y install gcc gcc-c++ make \
    && yum clean all
