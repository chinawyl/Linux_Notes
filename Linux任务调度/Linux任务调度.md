一、一次性计划任务

语法:at [选项] [时间]

```shell
#常用选项说明:
#-l:显示等待执行的调度作业
#-d:删除指定的调度作业
#-v:显示作业执行的时间
#-c:将命令行上所列作业送到标准输出设备

#绝对计时法，HH:MM
at -f job 13:00 10/1/2019 #在2019年10月1日执行job中的作业

#直接计时法，today、tomorrow之类的
at -f job 3:00pm tomorrow #在明天下午3点执行job中的作业

#相对计时法，now+时间间隔
at -f job 9:00am+2days #在两天后上午9点执行job中的作业
```

注:

1.at调度只能执行一次

2.root账号可以直接执行at命令，其他用户看/etc/at.allow和/etc/at.deny是否存在

二、周期性计划任务

原理示意图:

![001](D:\Linux_Notes\Linux任务调度\001.png)

基本语法:crontab [选项] 

```shell
#常用选项说明:
#-e:编辑crontab定时任务
#-l:查询crontab任务
#-r:删除当前用户crontab任务

#每小时每分钟执行ls -l命令并存入文件to.txt
crontab -e

i

*1/**** ls -l /etc >> /tmp/to.txt

wq
```

五个占位符说明:

![002](D:\Linux_Notes\Linux任务调度\002.png)

特殊符号说明:

![003](D:\Linux_Notes\Linux任务调度\003.png)

特定时间执行任务案例:



![004](D:\Linux_Notes\Linux任务调度\004.png)

任务调度相关指令:

```shell
crontab -r #终止任务调度

crontab -l #列出当前有那些任务调度

service crond restart #重启任务调度
```

