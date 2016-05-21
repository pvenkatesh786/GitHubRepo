
ating point operation ##

echo "Enter the first no."
read a
echo "Enter ur second no."
read b

c=`echo $a + $b |bc`
d=`echo $a - $b |bc`
e=`echo $a \* $b |bc`
f=`echo $a / $b |bc`

echo $c $d $e $f

