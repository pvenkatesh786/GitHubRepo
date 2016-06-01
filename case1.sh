#!/bin/bash

echo "Enter YES or NO"
read select
case $select in
y|Y|yes|Yes)
	echo "You have selected yes and Mahesh Babu is a great actor"
	;;
n|N|yes|yes)
	echo "You have selected no, looks like you are not fan of Mahesh Babu"
	;;
esac
