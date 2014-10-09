#!/bin/sh

IP_PORTS="";
for node in `cat /etc/hosts | grep redisclusternode | awk '{print $1}'`; do
    if [ -z "$node" ]; then
        continue;
    fi;
    IP_PORTS=$IP_PORTS' '$node':6379';
done;

if [ -n "$IP_PORTS" ]; then
    /usr/local/bin/redis-trib.rb create --replicas 1 $IP_PORTS
fi
