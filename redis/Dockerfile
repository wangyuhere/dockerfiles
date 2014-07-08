FROM ubuntu
RUN apt-get -y update
RUN apt-get -y install redis-server

RUN mkdir -p /var/lib/redis /var/log/redis /var/run/redis
VOLUME ["/var/lib/redis", "/var/log/redis"]

EXPOSE 6379

ENTRYPOINT ["/usr/bin/redis-server"]
