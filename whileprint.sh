#!/bin/bash
## This scripts print 1 to 10 nos.

count=1
while [ $count -le 10 ]
do 
	echo $count
	count=`expr $count + 1`
	sleep 2
done
