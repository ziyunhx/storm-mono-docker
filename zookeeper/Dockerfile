FROM ziyunhx/base

RUN wget -q -O - http://mirror.vorboss.net/apache/zookeeper/zookeeper-3.4.9/zookeeper-3.4.9.tar.gz | tar -xzf - -C /opt
RUN mv /opt/zookeeper-3.4.9/conf/zoo_sample.cfg /opt/zookeeper-3.4.9/conf/zoo.cfg

ENV ZK_HOME /opt/zookeeper-3.4.9
RUN sed  -i "s|/tmp/zookeeper|$ZK_HOME/data|g" $ZK_HOME/conf/zoo.cfg; mkdir $ZK_HOME/data

ADD start-zk.sh /usr/bin/start-zk.sh 

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper-3.4.9
VOLUME ["/opt/zookeeper-3.4.9/conf", "/opt/zookeeper-3.4.9/data"]

CMD /usr/sbin/sshd && start-zk.sh