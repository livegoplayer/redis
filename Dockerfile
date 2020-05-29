FROM redis:buster

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
	echo "deb http://mirrors.aliyun.com/debian/ buster main non-free contrib \
		  deb-src http://mirrors.aliyun.com/debian/ buster main non-free contrib \
		  deb http://mirrors.aliyun.com/debian-security buster/updates main \
		  deb-src http://mirrors.aliyun.com/debian-security buster/updates main \
		  deb http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib \
		  deb-src http://mirrors.aliyun.com/debian/ buster-updates main non-free contrib \
		  deb http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib \
		  deb-src http://mirrors.aliyun.com/debian/ buster-backports main non-free contrib \
	" > /etc/apt/sources.list

RUN apt-get update

RUN mkdir /usr/local/etc/redis

COPY ./conf/redis.conf /usr/local/etc/redis
