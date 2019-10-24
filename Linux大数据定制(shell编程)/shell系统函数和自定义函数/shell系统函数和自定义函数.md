一、系统函数

1.basename

基本介绍:返回完整路径最后/的部分，常用于获取文件名

```shell
#返回/home/aaa/test.txt的"test.txt"部分
basename /home/aaa/test.txt #test.txt
```

2.dirname

基本介绍:返回完整路径最后/的前面的部分，常用于返回路径部分

```shell
#返回/home/aaa/test.txt的"/home/aaa"部分
dirname /home/aaa/test.txt #/home/aaa
```

二、自定义函数

基本语法:

[ function ] funname[()]

{

​	Action

​	[return int;]

}

注:调用直接写函数名funname

示例:

```shell
#!/bin/bash

#计算输入的两个参数的和
function getSum(){
        SUM=$[$n1+$n2]
        echo "和=$SUM"
}
read -p "请输入第一个数n1:" n1
read -p "请输入第二个数n2:" n2

getSum $n1 $n2

```