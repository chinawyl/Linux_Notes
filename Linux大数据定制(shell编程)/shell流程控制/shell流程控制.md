一、if

​	基本语法:

​	方式一、

​		if [ 条件判断式 ];then

​			程序

​		fi

​	方式二、

​		if [ 条件判断式 ]

​		then

​			程序

​		elif [ 条件判断式 ]

​		then

​			程序

​		fi

​	注:[ 条件判断式 ]中括号和条件判断式之间有空格，推荐方式二

​	常用判断条件:

```shell
1 字符串判断

str1 = str2		当两个串有相同内容、长度时为真
str1 != str2	当串str1和str2不等时为真
-n str1			当串的长度大于0时为真(串非空)
-z str1			当串的长度为0时为真(空串)
str1			当串str1为非空时为真

2 数字的判断

int1 -eq int2　　　两数相等为真
int1 -ne int2　　　两数不等为真
int1 -gt int2　　　int1大于int2为真
int1 -ge int2　　　int1大于等于int2为真
int1 -lt int2　　　int1小于int2为真
int1 -le int2　　　int1小于等于int2为真

3 文件相关的if判断条件语句

-r file		用户可读为真
-w file　　　用户可写为真
-x file　　　用户可执行为真
-f file　　　文件为正规文件为真
-d file　　　文件为目录为真
-c file　　　文件为字符特殊文件为真
-b file　　　文件为块特殊文件为真
-s file　　　文件大小非0时为真
-t file　　　当文件描述符(默认为1)指定的设备为终端时为真

3 复杂逻辑判断
-a			与
-o			或
!			非
```

示例一:

```shell
#!/bin/bash

#ok是否等于ok
if [ "ok" = "ok" ]
then
		echo "equal"
fi
```

示例二:

```shell
#!/bin/bash

#23是否大于等于22
if [ 23 -gt 22 ]
then
		echo "大于"
elif [23 -lt 22]
then
		echo "小于"
else
		echo "等于"
fi
```

示例三:

```shell
#!/bin/bash

#/root/a.txt目录的文件是否存在
if [ -e /root/a.txt ]
then
		echo "存在"
fi
```

注:[ 条件判断式 ]中[]和判断条件之间必须有空格

二、case

​	基本语法:

​		case $变量名 in

​		"值1")

​		语句1

​		;;

​		"值2")

​		语句2

​		......

​		如果不满上面值，执行下面语句

​		;;

​		easc

示例:

```shell
#!/bin/bash

#当输入1时打印1，输入2打印2，输入其他打印其他
case $1 in
"1")
echo "一"
;;
"2")
echo "二"
;;
*)
echo "other"
;;
```

三、for

​	基本语法:

​		方式一

​		for 变量 in 值1 值2 值3...

​			do

​				程序

​			done

​		示例:

```shell
#!/bin/bash

#打印命令行输入的参数
for i in "$@" #一般用$@处理
do
        echo "the number is $i"
done
```

​		方式二

​		for ((初始值;循环条件;变量变化))

​			do

​				程序

​			done

​		示例:

```shell
#!/bin/bash

#输出1到100的和的值
SUM=0
for ((i=1;i<=100;i++))
do
        SUM=$[$SUM+$i]
done
echo "SUM=$SUM"
```

四、while

​	基本语法:

​	while [ 条件判断式 ]

​	do

​		程序

​	done

​	示例:

```shell
#!/bin/bash

#输出1到100的和的值
SUM=0
i=0
while [ $i -le $1 ]
do
        SUM=$[$SUM+$i]
        i=$[$i+1]
done
echo "SUM=$SUM"
```

