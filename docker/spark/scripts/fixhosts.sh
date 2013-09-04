#!/bin/sh

export IP=`ip -4 addr show eth0 | tail -1 | awk '{print $2}' | cut -d/ -f1`

# clear out hosts on run
rm /etc/hosts
echo 127.0.0.1 `hostname` >>  /etc/hosts
echo $IP `hostname` >> /etc/hosts
