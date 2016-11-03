# litalidev/docker-base-cron/Dockerfile
# Copyright (c) 2016 by Lita Li
#
# Version   0.1.0

FROM litalidev/docker-base
MAINTAINER Lita Li<litalidev@gmail.com>

RUN apt-get update && apt-get install -y cron

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY crontest /tmp
RUN  crontab /tmp/crontest

EXPOSE 22

CMD ["/usr/bin/supervisord"]
