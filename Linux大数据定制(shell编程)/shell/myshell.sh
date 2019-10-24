#!/bin/bash
#echo "hello,world!"
#echo "PATH=$PATH"
#echo "user=$USER"

#A=100
#echo "A=$A"
#unset A
#echo "A=$A"

#readonly A=99
#echo "A=$A"
#unset A
#echo "A=$A"

RESULT=`ls -l /home`
echo $RESULT
echo ""
MyDate=$(date)
echo "date=$MyDate"
