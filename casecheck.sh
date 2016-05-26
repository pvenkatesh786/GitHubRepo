#!/bin/bash
## This script wil check ur entered is lower case , upper case or special sysmbol

echo "Enter the Aplhabet or Numbers or Special Character : \c"
read var
case $var in

[a-z])
	echo "You entered into lower case letter"
	;;
[A-Z])
	echo "You entered into Uper case letter"
	;;
[0-9])
	echo "You Entered into numbers"
	;;
?)
	echo "You entered into speical character"
	;;
*)
	echo "You have entere more than one character"
	;;
esac
