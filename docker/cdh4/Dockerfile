FROM ubuntu:12.04
MAINTAINER github.com/dforsyth

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y curl wget openjdk-7-jre-headless sudo ssh

RUN wget http://archive.cloudera.com/cdh4/one-click-install/precise/amd64/cdh4-repository_1.0_all.deb
RUN dpkg -i cdh4-repository_1.0_all.deb

RUN curl -s http://archive.cloudera.com/cdh4/debian/squeeze/amd64/cdh/archive.key | apt-key add -

RUN apt-get update
RUN apt-get install -y hadoop-conf-pseudo

RUN sed -i'' 's/localhost/0.0.0.0/' /etc/hadoop/conf/core-site.xml

ADD scripts/runner.sh runner.sh

EXPOSE 8020
EXPOSE 50070
