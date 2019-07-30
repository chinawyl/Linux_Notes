crond任务调度

原理示意图:

![001](D:\Linux_Notes\Linux任务调度\001.png)

基本语法:crontab [选项] 

选项:

1.-e:编辑crontab定时任务

2.-l:查询crontab任务

3.-r:删除当前用户crontab任务

快速入门案例:每小时每分钟执行ls -l命令并存入文件

![006](D:\Linux_Notes\Linux任务调度\006.png)

五个占位符说明:

![007](D:\Linux_Notes\Linux任务调度\007.png)

特殊符号说明:

![008](D:\Linux_Notes\Linux任务调度\008.png)

特定时间执行任务案例:

![009](D:\Linux_Notes\Linux任务调度\009.png)

案例1:

![002](D:\Linux_Notes\Linux任务调度\002.png)

案例2:

![003](D:\Linux_Notes\Linux任务调度\003.png)

案例3:

![004](D:\Linux_Notes\Linux任务调度\004.png)

crond相关指令:

![005](D:\Linux_Notes\Linux任务调度\005.png)

