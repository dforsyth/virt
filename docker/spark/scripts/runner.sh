#!/bin/sh

. ./fixhosts.sh
./usr/local/opt/spark-0.7.3/run $@ -i $IP
