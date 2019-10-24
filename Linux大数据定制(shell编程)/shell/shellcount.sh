#!/bin/bash

#第一种方式$()
result1=$(((2+3)*4))
echo "RESULT1=$result1"
#第二种方式$[]
result2=$[(2+3)*4]
echo "RESULT2=$result2"
#第三种方式expr
temp=`expr 2 + 3`
result3=`expr $temp \* 4`
echo "RESULT3=$result3"

#求出两个参数的和
sum=$[$1+$2]
echo "SUM=$sum"
