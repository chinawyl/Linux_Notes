一、mkdir指令

作用:创建目录

```shell
mkdir Test #创建目录

mkdir -p Test/File #一次性创建多级目录

mkdir -m 775 Test #创建目录时设置目录访问权限
```

二、rmdir指令

作用:删除目录

```shell
rmdir Test #删除目录

rmdir -p Test #递归删除目录
```

注:

不论有没有子目录都要求删除之前目录为空

三、cd指令

作用:目录跳转

```shell
cd 绝对路径或相对路径

cd .. #回到上一级

cd /  #回到根目录

cd ~  #回到家目录
```

四、pwd指令

作用:显示当前工作目录决对路径

```shell
pwd
```

五、ls指令

作用:查看当前目录的所有内容信息

```shell
ls -a #显示所有文件和目录，包括隐藏文件和隐藏子目录

ls -l #显示所有文件和目录详细信息

ls -lh #显示所有文件和目录详细信息同时显示文件大小

ls -d #只显示目录信息

ls -t #按照时间顺序显示

ls -R #不仅显示目录下的文件和子目录信息，还递归显示各子目录中的文件和子目录信息
```

六、cat指令

作用:查看文件内容，以只读方式

```shell
cat >f1 #创建文本文件f1，并显示文件内容，可以按ctrl+d保存

cat -n /etc/profile | more #打开文件，并显示行号和分页显示
```

七、more指令(可以查看二进制文件)

作用:基于vi编辑器的文本过滤器，以全屏幕显示

```shell
more /etc/passwd

more -p /etc/passwd #显示下一屏之前先清屏

more -s /etc/passwd #将连续空白行压缩成一个空白行
```

注:按enter或空格向下翻页，按b向上翻页，按q退出

八、less指令(只能查看ASCII码文件)

作用:分屏查看文件，与more类似

```shell
less/etc/passwd
```

注:上下方向键，enter或空格键，PageDown或PageUp键前后翻阅内容

九、head指令

作用:输出文件的开头内容，默认为前10行

```shell
head -n 5 /etc/profile #显示文件前5行
```

十、tail指令

作用:输出文件尾部内容，默认为后10行

```shell
tail +n 5 /etc/profile #从第5行以后开始显示

tail -n 5 /etc/profile #从距文件尾5行处开始显示，即查看最后5行内容

tail -f /etc/profile #实时监控文件
```

十一、grep指令

作用:以指定的查找模式搜索文件

```shell
grep -i "root" /etc/passwd #查找/etc/passwd文件下的root字符串，且不区分大小写

grep data * #查找当前目录下所有文件含有data字符串的行

cat hello.txt | grep -n hello #默认区分大小写

cat hello.txt | grep -ni hello #不区分大小写
```

注:

1.-n：显示匹配行及行号

2.-i:忽略字母大小写

十二、find指令

作用:按范围查找文件

```shell
find /home -name hello.txt #按指定文件名查找文件

find /home ! -name hello.txt #按非指定文件名查找文件

find /opt -user nobby #按指定用户名的所有者查找文件

find /usr +20M #按指定文件大小查找文件，+n表示大于，-n表示小于，n表示等于

find / -group root #按指定用户名的组查找文件

find ~ -type d #按指定文件类型查找文件
```

注:文件单位大小要用大写

十三、wc指令

```shell
#统计/home文件夹下文件的个数
ls -l /home | grep "^-" | wc -l

#统计/home文件夹下目录的个数
ls -l /home | grep "^d" | wc -l

#统计/home文件夹下文件的个数(包括子文件夹)
ls -lR /home | grep "^-" | wc -l

#统计/home文件夹下目录的个数(包括子文件夹)
ls -lR /home | grep "^d" | wc -l

#统计文件字节数，字数，行数
wc -clw test.txt #显示结果为行数，单词数，字符数，文件名
```

注:

1.-c:统计字节数

2.-l:统计行数

3.-w:统计字数

十四、cp指令

作用:拷贝文件

```shell
#格式:cp [选项] source(源) dest(目标)，拷贝时要在对于目录

cp aaa.txt bbb/ #拷贝aaa.txt文件至bbb目录

cp -r bbb/ home/ #递归拷贝目录及其文件

\cp -r bbb/ home/ #加\再次拷贝是否覆盖时跳过询问
```

十五、mv指令

作用:移动文件或重命名

```shell
#重命名语法:mv oldnamefile newnamefile
mv a.txt b.txt

#移动语法:mv filename 目录
mv a.txt /root

mv -b a.txt /root #若存在同名文件，覆盖前备份原来的文件

mv -f a.txt /root #若存在同名文件,强制覆盖同名文件
```

注:

1.执行指令为重命名还是移动由当前目录是否有被操作文件进行判定

2.移动指令执行时要进入相应目录

十六、touch指令

作用:创建空文件

```shell
touch a.txt #创建单个文件

touch b.txt b.txt #创建多个文件
```

十七、rm指令

作用:删除文件或目录

```shell
rm aaa.txt

rm -r bbb #按递归方式删除目录及其子目录下和文件

rm -f bbb #强制删除，不出现确认信息

rm -rf bbb #删的一干二净
```

十八、重定向指令和追加指令

作用:覆盖或追加内容至文件

```shell
#>1.指令:输出重定向，会将原来文件内容覆盖
ls-l > a.txt #将ls -l显示的内容覆盖写入a.txt，如果a.txt不存在则创建

#2.>>指令:追加，不会将原来文件内容覆盖
ls-l >> b.txt #将ls -l显示的内容追加写入b.txt，如果b.txt不存在则创建

#3.cat指令:显示文件内容同时追加或覆盖
cat /etc/profile >> c.txt #将c.txt文件内容追加在profile后面

#4.cat指令:将多个文件内容合并到新文件
cat file1.txt file2.txt > newfile.txt

#5.2>指令:错误信息重定向到指定文件
ls /test 2>error #cat error可以看到错误信息
```

注:cat指令按ctrl+d结束文本输入

十九、echo指令

作用:输出内容到控制台

```shell
echo $PATH #输出Linux环境变量路径

echo hello #输出hello
```

二十、ln指令

作用:软连接，存放链接其他文件路径，类似于windows快捷方式

```shell
#创建软连接基本语法:ln -s[原文件或目录] [软连接名]
ln -s /root linkToRoot

#删除软连接基本语法:rm -rf 软连接名，后面不要带/
rm -rf linkToRoot
```

注:用pwd查看目录时依然在软连接目录

二十一、alias指令

作用:查看和设置别名

```shell
alias #查看别名

alias pd = 'vim /etc/passwd' #设置pd为vim /etc/passwd的别名
```

注:别名有效期仅持续到用户推出登录为止

二十二、history指令

作用:查看已经执行过的历史指令，也可以执行历史指令

```shell
history 10 #显示最近显示的10个指令

!178 #执行历史编号为178的指令

history -w text.txt #将当前命令写入文件并覆盖文件原来内容

history -a text.txt #将当前命令追加文件尾部
```

注:不带参数为显示所有指令

二十三、clear指令

作用:清屏

```shell
clear
```

注:Windows的清屏为cls

二十四、管道|

作用:将第一个命令的输出通过管道传给第二个命令，作为第二个命令的输入，以此类推，最后一个命令输出

```shell
cat f1.txt | grep file | wc -l #统计f1.txt文件下file单词行数
```

