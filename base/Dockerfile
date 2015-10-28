FROM centos:7
MAINTAINER Carey Tzou <carey@tnidea.com>

# Install wget tar python-setuptools openssh-server & supervisor
RUN yum -y update; \
    yum -y install wget tar python-setuptools; \
    yum clean all && rm -rf /var/cache/yum/*

RUN easy_install supervisor
RUN mkdir /etc/supervisor
RUN echo_supervisord_conf > /etc/supervisord.conf

# Downloading the RPM from oracle
ENV JAVA_VERSION 8u65
ENV BUILD_VERSION b17
RUN wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/jdk-$JAVA_VERSION-linux-x64.rpm" -O /tmp/jdk-8-linux-x64.rpm

# Install the RPM
RUN yum -y install /tmp/jdk-8-linux-x64.rpm
ENV JAVA_HOME /usr/java/latest