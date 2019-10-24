#!/bin/bash
if [ $1 -ge 60 ]
then
	echo "及格"
elif [ $1 -lt 60 ]
then
	echo "不及格"
fi
