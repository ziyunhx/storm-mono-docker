FROM ubuntu:trusty

RUN apt-get update; apt-get install -y unzip openjdk-7-jre-headless wget supervisor docker.io openssh-server
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/
RUN echo 'root:ziyunhxpass' | chpasswd
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN cp /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime

EXPOSE 22
