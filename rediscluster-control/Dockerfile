FROM merlin83/rediscluster-base

MAINTAINER merlin83

RUN apt-get update; apt-get install -qy ruby docker.io
RUN gem install redis

RUN sed -i 's/yes_or_die "Can I set the above configuration?"//g' /usr/local/bin/redis-trib.rb

ADD start.sh /start.sh
CMD ["/start.sh"]
