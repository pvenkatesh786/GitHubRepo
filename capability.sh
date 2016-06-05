#!/bin/bash

#echo  "Please Enter your Capability ID"
#read cap
#uid=`grep "Last Refreshed" capability | awk '{print $25, $26, $27, $28}'`
#echo "Last Refreshed :  $uid"

#!/bin/bash
uid=`grep "Last Refreshed" capability | awk -F'Last Refreshed=' '{print $2}' | awk -FActi '{print $1}'`
for i in `echo $uid`
do
  echo "Last Refreshed :  $uid"
done
