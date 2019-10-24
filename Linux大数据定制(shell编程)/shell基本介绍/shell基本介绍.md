一、shell原理示意图

![001](D:\Linux_Notes\Linux大数据定制(shell编程)\shell基本介绍\001.png)

注:shell是命令解释器

二、shell脚本执行方式

方式一:首先给脚本可执行权限，然后用相对路径或绝对路径执行

```shell
vim myshell.sh

chmod 744 myshell.sh

./myshell.sh
```

方式二:不给脚本可执行权限，直接执行(不推荐)

```shell
/root/shell/myshell.sh
```

注:

1.脚本以#!/bin/bash开头

2.脚本需要有可执行权限

3.shell一般后缀为sh，也可以是其他

