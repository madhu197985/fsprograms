#!/bin/bash

echo " enter the filename "
read filename
num=1
while read line
do
echo "$line"
count=`echo "$line" | wc -c`
echo " no of characters present in line number $num is $count "
num=`expr $num + 1`
done < $filename

