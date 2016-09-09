FROM centos:latest

MAINTAINER zhfeng <zfeng@redhat.com>

ENV JDK_VERSION 8u102
ENV BUILD_VERSION b14

RUN yum -y update && yum clean all
RUN yum -y group install "Development Tools"
RUN yum -y install valgrind

RUN yum install -y wget && \
wget --no-cookies --no-check-certificate \
     --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
     "http://download.oracle.com/otn-pub/java/jdk/$JDK_VERSION-$BUILD_VERSION/jdk-$JDK_VERSION-linux-x64.rpm" && \
     yum localinstall -y jdk-$JDK_VERSION-linux-x64.rpm && \
     rm -f jdk-$JDK_VERSION-linux-x64.rpm && \
     yum clean all

ENV ANT_VERSION 1.8.2
RUN wget http://archive.apache.org/dist/ant/binaries/apache-ant-${ANT_VERSION}-bin.tar.gz && \
    tar -xzf apache-ant-${ANT_VERSION}-bin.tar.gz && \
    mv apache-ant-${ANT_VERSION} /opt/ant && \
    rm apache-ant-${ANT_VERSION}-bin.tar.gz 

ENV JAVA_HOME /usr/java/jdk1.8.0_102
ENV ANT_HOME /opt/ant
ENV PATH ${PATH}:/opt/ant/bin
