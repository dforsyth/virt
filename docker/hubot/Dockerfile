FROM ubuntu:12.04
MAINTAINER github.com/dforsyth

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install python-software-properties git

RUN add-apt-repository -m ppa:chris-lea/node.js 
RUN apt-get update
RUN apt-get -y install nodejs libssl-dev redis-server libexpat1-dev

RUN npm install -g coffee-script hubot

RUN hubot --create . 

RUN npm install hubot-irc --save && npm install

ADD conf/hubot-scripts-dependencies hubot-scripts-dependencies
RUN if [ "x`cat hubot-scripts-dependencies`" != "x" ]; then npm install -g `cat hubot-scripts-dependencies`; fi

ADD conf/hubot-scripts.json hubot-scripts.json
ADD scripts/runner.sh runner.sh

ENTRYPOINT sh runner.sh
