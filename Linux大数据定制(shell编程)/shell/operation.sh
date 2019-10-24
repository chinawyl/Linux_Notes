#!/bin/bash
#result1=$[$1+$2]
#echo "RESULT=$result1"
result2=$[(6+13)*20]
echo "RESULT=$result2"
temp=`expr 6 + 13`
result3=`expr $temp \* 20`
echo "RESULT=$result3"
