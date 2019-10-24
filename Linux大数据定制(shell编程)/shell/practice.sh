#!/bin/bash
#hw="hello world!"
#echo "$hw"
<<!
result=`ls -l /home`
echo $result
Date=$(date)
echo "$date"
readonly A=100
echo "B=$A"
!
#echo "tomcathome=$TOMCAT_HOME"
#echo "$0 $1 $2"
#echo "$*"
#echo "$@"
#echo "参数个数=$#"
echo "当前进程号=$$"
echo "最后的进程号=$!"
echo "执行的值=$?"
