#!/bin/bash

redis-server /usr/local/etc/redis/redis.conf

tail -f /data/stdout