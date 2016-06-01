#!/bin/bash
# This scripts ask the username to tell the information of that user

echo "Enter username"
read user
line=`grep $user /etc/passwd`
IFS=:
set $line
echo "Username:$1"
echo "Password:$2"
echo "User ID:$3"
echo "Group ID:$4"
echo "Comment Field:$5"
echo "Home Folder:$6"
echo "Default Shell:$7"
