# image for miniconda and python35 stuff.

FROM dctest/build_tools_base

ENV MINICONDA_PACKAGE Miniconda3-3.18.9-Linux-x86_64.sh
ENV MINICONDA_MD5 ece4fc1375fe62639f0f625feae3e273

RUN set -x  \
        && echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh  \
        && curl -sS -o $MINICONDA_PACKAGE https://repo.continuum.io/miniconda/$MINICONDA_PACKAGE  \
        && echo "$MINICONDA_MD5  $MINICONDA_PACKAGE" > MD5SUM  \
        && md5sum -c MD5SUM  \
        && rm MD5SUM  \
        && echo "Things seem ok"
