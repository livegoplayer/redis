FROM redis:buster

RUN mkdir /usr/local/etc/redis

COPY ./conf/redis.conf /usr/local/etc/redis

RUN cat /usr/local/etc/redis/redis.conf

