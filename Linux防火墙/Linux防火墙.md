一、防火墙生命周期管理

为了启动防火墙，要先重启下 dbus.

 ```shell
systemctl restart dbus
 ```

然后通过如下命令进行防火墙生命周期管理



启动一个服务：

 ```shell
systemctl start firewalld.service
 ```



关闭一个服务：

 ```shell
systemctl stop firewalld.service
 ```



重启一个服务：

 ```shell
systemctl restart firewalld.service
 ```



显示一个服务的状态：

 ```shell
systemctl status firewalld.service
 ```



在开机时启用一个服务：

 ```shell
systemctl enable firewalld.service
 ```



在开机时禁用一个服务：

 ```shell
systemctl disable firewalld.service
 ```



查看服务是否开机启动：

 ```shell
systemctl is-enabled firewalld.service
 ```



查看已启动的服务列表：

 ```shel
systemctl list-unit-files|grep enabled
 ```



查看启动失败的服务列表：

 ```shel
systemctl --failed
 ```

二、防火墙配置工作

查看版本： 

 ```shell
firewall-cmd --version
 ```



查看帮助： 

  ```shell
firewall-cmd --help
  ```



显示状态： 

  ```shell
firewall-cmd --state
  ```



查看所有打开的端口： 

  ```shell
firewall-cmd --zone=public --list-ports 
  ```



更新防火墙规则： 

  ```shell
firewall-cmd --reload
  ```



查看区域信息: 

  ```shell
firewall-cmd --get-active-zones 
  ```



查看指定接口所属区域： 

  ```shell
firewall-cmd --get-zone-of-interface=eth0
  ```



拒绝所有包，测试别用这个。不如然只有到VMWare 的终端上去关闭防火墙 SSH 客户端，稍显麻烦：

  ```shell
firewall-cmd --panic-on
  ```



取消拒绝状态： 

  ```shell
firewall-cmd --panic-off
  ```



查看是否拒绝： 

  ```shell
firewall-cmd --query-panic
  ```



开启一个端口

 ```shell
firewall-cmd --zone=public --add-port=80/tcp --permanent 
 ```

注1：--permanent永久生效，没有此参数重启后失效

注2：增加了要用 firewall-cmd --reload，才会生效



重新载入

 ```shell
firewall-cmd --reload
 ```

 

查看

 ```shell
firewall-cmd --zone=public --query-port=80/tcp
 ```

 

删除

 ```shell
firewall-cmd --zone= public --remove-port=80/tcp --permanent
 ```