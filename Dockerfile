FROM	ubuntu:precise
MAINTAINER	Aaron Rustad <arustad@anassina.com>

RUN	apt-get update

RUN apt-get -y install python-software-properties
RUN apt-get -y install software-properties-common

RUN add-apt-repository -y ppa:rwky/redis 
RUN	apt-get update

RUN apt-get install redis-server

EXPOSE 6379

CMD /usr/bin/redis-server
