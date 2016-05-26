#!/bin/bash

#This script help us to determine the enter word is starting with vowel, digit, 3 letter word or after the range.

echo "Enter the word: \c"
read word
case $word in 

[aeiou]* | [AEIOU]*)
		echo "Entered word is starting with vowel character"
		;;
[0-9]*)
		echo "Entered number is starting with digit"
		;;
*[0-9])
		echo "Entered isend with digit"
		;;
???)
		echo "Its 3 letter word"
		;;
*)
		echo "Entered is out of the script conditions"
		;;
esac
