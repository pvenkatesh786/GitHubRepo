#!/bin/bash

## Write a script which will rename the file which you want(Ask the new file name in keyboard)? ##

echo "Pleae enter your new filename"
read name
mv $1 $name
cat $name

