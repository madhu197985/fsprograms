#!/bin/bash
#a=$1
echo "enter the value of a"
read a
temp=$a
resu=1
while [ $a -gt 0 ]
do
	echo "$a"
	resu=`expr $a \* $resu`
	a=`expr $a - 1`
	#echo "$a"
done
echo " factorial of $temp is $resu "
