FROM redis:buster

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
	echo "deb http://mirrors.163.com/debian/ buster main contrib non-free \
		 # deb-src http://mirrors.163.com/debian/ buster main contrib non-free \
		 deb http://mirrors.163.com/debian/ buster-updates main contrib non-free \
         # deb-src http://mirrors.163.com/debian/ buster-updates main contrib non-free \
         deb http://mirrors.163.com/debian/ buster-backports main contrib non-free \
         # deb-src http://mirrors.163.com/debian/ buster-backports main contrib non-free \
         deb http://mirrors.163.com/debian-security buster/updates main contrib non-free \
         # deb-src http://mirrors.163.com/debian-security buster/updates main contrib non-free 
	" > /etc/apt/sources.list

RUN apt-get update

RUN mkdir /usr/local/etc/redis

COPY ./conf/redis.conf /usr/local/etc/redis

