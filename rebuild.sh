#!/bin/sh

docker build -t merlin83/rediscluster-base base
docker build -t merlin83/rediscluster-node rediscluster-node
docker build -t merlin83/rediscluster-control rediscluster-control
