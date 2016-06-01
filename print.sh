#!/bin/bash

a=0
echo "Going to print 1 to 10 except 2 and 5"
while [ $a -lt 10 ]
do
	a=`expr $a + 1`
	if [ $a -eq 2 ] || [ $a -eq 5 ]
	then 
		continue
	else 
		echo  $a
 	fi
done
