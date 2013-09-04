#!/bin/sh

echo "$@" >> `grep dataDir zoo.cfg | cut -d"=" -f2`/myid
/usr/share/zookeeper/bin/zkServer.sh start-foreground ./zoo.cfg
