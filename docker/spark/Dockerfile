FROM ubuntu:12.04
MAINTAINER github.com/dforsyth

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y git wget openjdk-7-jre-headless python2.7

RUN wget http://www.scala-lang.org/files/archive/scala-2.9.3.tgz
RUN wget http://spark-project.org/download/spark-0.7.3-prebuilt-cdh4.tgz

RUN mkdir -p /usr/local/opt
RUN tar xvf scala-2.9.3.tgz -C /usr/local/opt/
RUN tar xvf spark-0.7.3-prebuilt-cdh4.tgz -C /usr/local/opt/

ENV SCALA_HOME /usr/local/opt/scala-2.9.3

EXPOSE 8080
EXPOSE 8081
EXPOSE 7077

ADD scripts/fixhosts.sh fixhosts.sh
ADD scripts/runner.sh runner.sh
ADD scripts/master.sh master.sh
ADD scripts/worker.sh worker.sh
ADD scripts/shell.sh shell.sh
ADD scripts/pyshell.sh pyshell.sh
