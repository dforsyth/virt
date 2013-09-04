FROM ubuntu:12.04
MAINTAINER github.com/dforsyth

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get -y install zookeeper

ADD conf/zoo.cfg zoo.cfg
ADD scripts/runner.sh runner.sh

EXPOSE 2181
