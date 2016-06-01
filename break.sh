#!/bin/bash

a=0
while [ $a -le 10 ]
do
	a=`expr $a + 1`
	if [ $a -ge 6 ]
	then	
		break
	else
		echo $a
	fi
done	

