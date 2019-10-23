一、rpm指令

```shell
#查看已安装的rpm软件包
rpm -qa | grep xx

#查询火狐浏览器软件包是否已经安装
rpm -q firefox

#查询火狐浏览器软件包信息
rpm -qi firefox

#查询火狐浏览器软件包中的文件
rpm -ql firefox

#查询文件所属rpm软件包
rpm -qf /etc/passwd #文件路径必须是全路径名

#安装RPM包
RPM -ivh RPM包全路径名词 #i表示安装，v表示提示，h表示进度条

#卸载rpm包
rpm -e RPM包的名称
rpm -e --nodeps RPM包的名称 #卸载rpm包可能遇到存在依赖无法删除，可以加入参数--nodeps强制删除
```

二、yum指令

yum管理原理示意图

![001](D:\Linux_Notes\Linux的RPM和YUM\001.png)

```shell
#查询yun服务器是否有需要安装软件
yum list | grep xxx

#安装指定yum包
yum install xxx #可以加-y跳过一些依赖是否确认安装
```



