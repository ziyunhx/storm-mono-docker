FROM ziyunhx/storm:1.0.1
MAINTAINER Carey Tzou <carey@tnidea.com>

RUN /usr/bin/config-supervisord.sh ui

EXPOSE 8080
CMD /usr/bin/start-supervisor.sh
