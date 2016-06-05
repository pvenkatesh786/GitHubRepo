uid=`grep "Refreshed" capability | awk -F'Refreshed=' '{print $2}' | awk -FActi '{print $1}' | tr ' ' '-'`
for i in `echo $uid`
do
  echo -e "Last Refreshed :  `echo $i | tr '-' ' '`"
done
