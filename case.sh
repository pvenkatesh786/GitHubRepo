#!/bin/bash

echo -e " 1: a \n 2: b \n 3: c"
echo "enter your choice: \c"
read var1

case $var1 in
a)
	echo -e " a1 \na2 \na3"
	read var2
		case $var2 in
		a1) 
			echo "Your Favourite actor is Mahesh Babu"
			;;
		a2)	
			echo "Your favourite sportsman is Rahul Dravid and MS Dhoni"
			;;
		a3) 
			echo "Your favourite actress is Samanta"
			;;
		*)
			echo "You have not entered valid requirement"
			;;
		esac
		;;
b)
	echo -e "You are interested in Sports"
	;;
c)
	echo "You are interested in Movie"
	;;
*)
 	echo "You are neither interested in Sports or Movie"
	;;
esac
