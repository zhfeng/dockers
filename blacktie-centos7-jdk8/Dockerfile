FROM centos:latest

MAINTAINER zhfeng <zfeng@redhat.com>

RUN yum -y update && yum clean all
RUN yum -y install gcc gcc-c++ java-devel valgrind ant git which java-1.8.0-openjdk-devel

RUN git clone https://github.com/jbosstm/narayana/
RUN (cd narayana && WORKSPACE=`pwd` PROFILE=BLACKTIE ./scripts/hudson/narayana.sh)
