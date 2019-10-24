一、运算符

基本语法:

```shell
1.$((运算式))

2.$[运算式]

3.expr 运算式

注意expr运算符间要有空格

4.expr \*，/，% 乘，除，取余
```

示例一、计算(2+3)*4的值

```shell
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

#执行
chmod 744 ./shellcount.sh
./shellcount.sh

#结果
RESULT1=20
RESULT2=20
RESULT3=20
```

示例二、求出两个参数的和

```shell
#!/bin/bash

#求出两个参数的和
sum=$[$1+$2]
echo "SUM=$sum"

#执行
./shellcount.sh 6 13

#结果
SUM=19
```

二、读取控制台输入

基本语法:read (选项) (参数)

​	选项:

​		-p:指定读取值时的提示符

​		-t:指定读取值时等待的时间(秒)，如果没有在指定时间内输入，就不等待了

​	参数:指定读取值时的变量

示例一

```shell
#!/bin/bash

#读取控制台输入的一个NUM值
read -p "请输入数字num=" NUM
echo "你输入的数字=$NUM"
```

示例二

```shell
#!/bin/bash

#读取控制台输入的一个NUM值，在10s内输入
read -t 10 -p "请输入数字num=" NUM
echo "你输入的数字=$NUM"
```

