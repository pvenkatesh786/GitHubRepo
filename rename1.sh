#!/bin/bash

######   WAS(Write a script) to reanme the file,  which fill ask old file name and new name ?  #####
#####

echo "Enter ur old file name"
read old
echo "Enter ur new file name"
read new
mv $old $new
echo "##################"
echo "Here is new file name $new"
cat $new

