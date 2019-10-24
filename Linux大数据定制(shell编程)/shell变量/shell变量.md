一、系统变量和用户自定义变量

系统变量

​	1.查看所有系统变量

```shell
set | more
```

​	2.查看环境和用户

```shell
#!/bin/bash
echo "PATH=$PATH"
echo "user=$USER"

#执行结果
PATH=/usr/local/bin
user=root
```

用户自定义变量

​	1.定义一个变量并撤销，同时打印他的值

```shell
#!/bin/bash
A=100
echo "A=$A"
unset A
echo "A=$A"

#执行结果
A=100
A=
```

​	2.设置静态变量不能unset

```shell
readonly A=99
echo "A=$A"
unset A
echo "A=$A"

#执行结果
A=99
./myshell.sh: line 13: unset: A: cannot unset: readonly variable
A=99
```

定义变量规则

​	1.由字母、数字、下划线组成，但不能由数字开头

​	2.等号两侧不能有空格

​	3.变量名一般为大写

将命令返回的值赋给变量

​	方式一、用``

```shell
RESULT=`ls -l /home`
```

​	方式二、用$()

```shell
MyDate=$(date)
echo="date=$MyDate"
```

二、预定义变量

基本介绍:shell 设计者事先已经定义好的变量，可以直接使用

基本语法:

​	$$:当前进程的进程号(PID)

​	$!:后台最后运行的一个程序的进程号

​	$?:最后一次执行的命令返回的状态。返回值为0则上一个执行命令正确，非0则不正确

示例:

```shell
vim prevar.sh

#!/bin/bash
echo = "当前的进程号=$$"
#后台运行的方式:myshell.sh
./myshell.sh
echo = "最后的进程号=$!"
echo = "执行的返回值=$?"

chmod 744 prevar.sh

./prevar.sh

#执行结果
当前的进程号=22083
最后的进程号=20084
执行的返回值=0
```

三、环境变量

基本语法:

​	1.export 变量名=变量值 (将shell变量输出为环境变量)

​	2.source 配置文件 (让修改后的配置信息立即生效)

​	3.echo $变量名 (查询环境变量的值)

设计一个环境变量

```shell
1.vim /etc/profile

2.输入TOMCAT_HOME=/opt/tomcat(换行)

3.输入export TOMCAT_HOME

4.执行:wq	

5.source  /etc/profile

6.打开文件myshell.sh

7.输入echo "tomcathome=$TOMCAT_HOME"，然后:wq

8.再执行myshell.sh
```

注:多行注释开头为 :<<!，结尾为!

四、位置参数变量

基本介绍:

​	获取执行shell脚本输入参数的信息

基本语法:

```shell
$n：n为数字，$0代表命令本身，$1-$9代表带一个到第九个参数，十以上的参数需要使用大括号表示，比如${10}

$*：这个变量代表命令行中所有的参数，$*把所有的参数看成一个整体

$@：这个变量也代表命令行中所有的参数，是把每个参数却分对待

$#：这个变量代表命令行中所有参数的个数
```

实例一

```shell
touch cs.sh
vim cs.sh

#!/bin/bash

num1=$1
num2=$2
sum=$(($num1 + $num2))
echo $sum
```

执行

```shell
chmod 755 cs.sh
./cs.sh 11 33
```

结果

```shell
44
```

实例二

```shell
#!/bin/bash
echo "\s* out result : $*"
echo "\s@ out result : $@"
echo "\s# out result : $#
```

执行

```shell
./cs1.sh  11 22 33  44
```

结果

```shell
\s* out result : 11 22 33 44
\s@ out result : 11 22 33 44
\s# out result : 4
```

实例三

```shell
#$*和$@的区别
#!/bin/bash

echo "\s* loops echo result is : "
for i in "$*"
        do
                echo $i
        done

echo "\s@ loops echo result is : "
for j in "$@"
        do
                echo $j
        done
```

执行

```shell
./cs2.sh 11 22 33 44
```

结果

```shell
\s* loops echo result is : 
11 22 33 44
\s@ loops echo result is : 
11
22
33
44
```

结论

```shell
$*中的所有参数看成是一个整体，所以for循环只循环一次。

$@中的每个参数十独立的，所有输入几个参数，就会循环几次。
```



