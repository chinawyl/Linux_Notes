#!/bin/bash
function getSum(){
	SUM=$[$n1+$n2]
	echo "和=$SUM"
}
read -p "请输入第一个数n1:" n1
read -p "请输入第二个数n2:" n2

getSum $n1 $n2
