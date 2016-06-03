#!/bin/bash

#echo  "Please Enter your Capability ID"
#read cap
uid=`grep "Last Refreshed" capability | awk '{print $25, $26, $27, $28}'`
echo "Last Refreshed :  $uid"

