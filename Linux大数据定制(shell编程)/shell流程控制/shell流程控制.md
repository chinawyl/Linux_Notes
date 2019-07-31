一、if

​	基本语法:

​	方式一、

​		if [ 条件判断式 ];then

​			程序

​		fi

​	方式二、

​		if [ 条件判断式 ]

​			then

​				程序

​			elif [ 条件判断式 ]

​			then

​				程序

​		fi

​	注:[ 条件判断式 ]中括号和条件判断式之间有空格，推荐方式二

​	示例:

![001](D:\Linux_Notes\Linux大数据定制(shell编程)\shell流程控制\001.png)

二、case

 基本语法:

![002](D:\Linux_Notes\Linux大数据定制(shell编程)\shell流程控制\002.png)

​	示例:

![003](D:\Linux_Notes\Linux大数据定制(shell编程)\shell流程控制\003.png)

三、for

​	基本语法:

​		方式一

![004](D:\Linux_Notes\Linux大数据定制(shell编程)\shell流程控制\004.png)

​		示例:

![005](D:\Linux_Notes\Linux大数据定制(shell编程)\shell流程控制\005.png)

![006](D:\Linux_Notes\Linux大数据定制(shell编程)\shell流程控制\006.png)

​		注:一般用$@处理

​		方式二

![007](D:\Linux_Notes\Linux大数据定制(shell编程)\shell流程控制\007.png)

​		示例:

![008](D:\Linux_Notes\Linux大数据定制(shell编程)\shell流程控制\008.png)

![009](D:\Linux_Notes\Linux大数据定制(shell编程)\shell流程控制\009.png)

四、while

​	基本语法:

![010](D:\Linux_Notes\Linux大数据定制(shell编程)\shell流程控制\010.png)

​	示例:

![011](D:\Linux_Notes\Linux大数据定制(shell编程)\shell流程控制\011.png)

