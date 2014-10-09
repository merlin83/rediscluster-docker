FROM merlin83/rediscluster-base

MAINTAINER merlin83

RUN sed -i 's/^\# cluster-enabled yes/cluster-enabled yes/g' /etc/redis.conf
RUN sed -i 's/^appendonly no/appendonly yes/g' /etc/redis.conf

CMD ["/usr/local/bin/redis-server", "/etc/redis.conf"]