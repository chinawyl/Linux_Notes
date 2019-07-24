#### 一、前言

- 前置知识？

1. vi命令：用来编辑文件；<https://www.cnblogs.com/88999660/articles/1581524.html>
2. systemctl命令：服务操作；<https://ken.io/note/centos-quickstart-basiccommand>

#### 二、安装并启用服务

```bash
#1、安装：
yum install -y vsftpd
#2、启动：
systemctl start vsftpd
#3、开机启动：
systemctl enable vsftpd
```

#### 三、修改配置

```bash
#配置文件： 
vi /etc/vsftpd/vsftpd.conf
#禁用匿名用户（非必要操作）：
anonymous_enable=NO
```

#### 四、创建用户

```bash
#1、创建用户：
useradd -d /var/www -s /sbin/nologin ftpuser
#2、修改密码：
passwd ftpuser
#3、设置权限：
chmod 777 /var/www
```

#### 五、防火墙设置

- 开放服务（推荐）

```bash
#1、开放ftp：
firewall-cmd --add-service=ftp --permanent
#2、重新加载防火墙规则：
firewall-cmd --reload
```

- 关闭防火墙（本地测试）

```bash
#1、停止防火墙服务：
systemctl stop firewalld
#2、设置开机不启动：
systemctl disable firewalld
```

#### 六、关闭SELinux

```bash
#1、查看SELinux状态： 
sestatus
#2、关闭SELinux： 
sed -i '/SELINUX/s/enforcing/disabled/' /etc/selinux/config 
#3、重启：
reboot
```