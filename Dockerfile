FROM centos:7

RUN yum update -y && yum install -y numactl-devel git make gcc

RUN git clone git://git.kernel.org/pub/scm/utils/rt-tests/rt-tests.git
WORKDIR rt-tests
RUN git checkout stable/v1.0
RUN make all install

ENTRYPOINT cyclictest
