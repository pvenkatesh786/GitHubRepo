#!/bin/bash

echo "Enter a number"
read num
if [ $num -lt 100 -a $num -gt 50 ]
then
        echo "The entered no is between 50 and 100"
else
        echo "U entered  no is cross the condition"
fi

