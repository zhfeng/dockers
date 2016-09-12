FROM centos:latest

MAINTAINER zhfeng <zfeng@redhat.com>

RUN yum -y update && yum clean all
RUN yum -y install gcc gcc-c++ valgrind ant git which java-1.8.0-openjdk-devel unzip wget

COPY ./build-blacktie.sh /
ENTRYPOINT ["/build-blacktie.sh"]
