#### 一、前言

- 前置知识？

1. vi命令：用来编辑文件；<https://www.cnblogs.com/88999660/articles/1581524.html>
2. systemctl命令：服务操作；<https://ken.io/note/centos-quickstart-basiccommand>

#### 二、安装

- 1、 安装

```bash
yum install httpd
```

- 2、 设置为开机启动&启用

```bash
systemctl enable httpd && systemctl start httpd
```

- 3、 防火墙端口开放

```bash
firewall-cmd --add-port=80/tcp --permanent
firewall-cmd --reload
```

- 4、访问

```bash
http://ip
#/usr/share/httpd/noindex/index.html
```

#### 三、Web应用/站点配置

- 1、新建站点目录&index页面

```bash
#创建站点根目录
mkdir /var/www/web

#进入站点根目录并创建index.html
cd /var/www/web && vi index.html

#写入hello并保存即可，方便后续测试使用
```

- 2、创建站点配置目录

```bash
mkdir /etc/httpd/sites
```

- 3、修改默认配置

```bash
vi /etc/httpd/conf/httpd.conf

#增加项：
IncludeOptional /etc/httpd/sites/*.conf
```

- 4、新建站点配置

```bash
vi /etc/httpd/sites/default.conf

#配置内容
<VirtualHost *:80>
    ServerName hello.html.com
    ServerAlias html.com
    DocumentRoot /var/www/web/
    ErrorLog /var/www/web/error.log
    CustomLog /var/www/web/requests.log combined
</VirtualHost>
```

- 5、访问测试

本地修改hosts文件，把hello.html.com指向该CentOS服务器IP，然后通过该域名访问即可。

> ```
> http://hello.html.com
> ```

- 6、端口使用注意事项

1、虚拟机绑定的端口一定是Apache监听的端口
2、建议Apache使用81端口把80端口让给Nginx

#### 四、备注

- 相关阅读

Windows系统修改hosts文件：<https://jingyan.baidu.com/article/b907e627d86be046e6891c41.html>