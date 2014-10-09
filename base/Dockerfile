FROM debian:sid

MAINTAINER merlin83

RUN apt-get update; apt-get install -qy make gcc wget

RUN cd /tmp/ && \
    wget https://github.com/antirez/redis/archive/3.0.0-rc1.tar.gz && \
    tar -zxf 3.0.0-rc1.tar.gz && \
    rm 3.0.0-rc1.tar.gz

RUN cd /tmp/redis-3.0.0-rc1 && make && make install
RUN cp /tmp/redis-3.0.0-rc1/redis.conf /etc/redis.conf
RUN cp /tmp/redis-3.0.0-rc1/src/redis-trib.rb /usr/local/bin/redis-trib.rb
