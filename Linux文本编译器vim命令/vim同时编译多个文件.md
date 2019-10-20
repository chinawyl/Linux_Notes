1.在同一窗口下显示多个文件

命令：vim filename1 filename2

说明：上述命令同时打开了filename1，filename2两个文件，不过文件filename1的内容将占据整个vim窗口，要想在各个文件之间进行切换，我们可通过如下命令

:n    切换到下一个文件

:N   切换到上一个文件

:n filename2   切换到文件filename2

我们提到每个打开的文件都对应着一个buffer，故可通过切换buffer来达到切换文件的目的，如下

:ls  列出vim打开的所有文件的信息，包括文件名，buffer id等

:b2  切换到buffer id为2的buffer

:bn   切换到当前buffer的下一个buffer

:bp   切换当前buffer的前一个buffer

:bd 关闭当前buffer，对应文件也随之关闭

:bd2 关闭buffer id为2的buffer，对应文件也随之关闭

我们可通过安装miniBufExplorer插件来简化buffer的切换。不过该插件有时会导致语法高亮显示失效，我们可通过命令：syntax on来恢复高亮。

2.分割窗口，显示多个文件

对于在同一个窗口下打开多个文件，对于各文件之间内容的复制，剪切操作终究不方便，我们可使用命令对窗口进行分割，每个子窗口显示一个文件

命令:vim  -o filename1 filename2  水平分割窗口

​		vim  -O  filename1 filename2 垂直分割窗口

按ctrl ww在各窗口之间进行切换。



其他操作:

a.假若我们通过vim打开了多个文件后，想在不关闭vim的情况下继续打开其他文件，如文件file，可在vim中使用如下命令：

​      :e  file   不会分割窗口(在那个窗口输入就占用那个窗口)

​      :sp  file  将会水平分割窗口(在那个窗口输入就和它水平)

​      :vsp  file  将会垂直分割窗口(在那个窗口输入就和它垂直)

 

 b. vim和shell之间切换

​       :shell   切换到shell，此时vim在后台运行，在shell中输入命令exit，切换回vim

 

c.  在vim中执行shell命令（不切换到shell）

​      :!command        在执行的命令前加上！，如!ls ，!ls -a

​      :  r  !command       将command命令的执行结果插入到文本当前行的下一行

​      :  3  !command      将文本中第三行的内容输入到命令command中进行处理，并将第三行的内容替换为命令的执行结果

​      :1,3   !command    将文本中第一行到第三行的内容输入到命令command中进行处理，并将第一行到第三行的内容替换为命令的执行结果

​      :  3  w !command      将文本中第三行的内容输入到命令command中进行处理，不改变当前编辑文件的内容.

​      :1,3  w  !command    将文本中第一行到第三行的内容输入到命令command中进行处理，不改变当前编辑文件的内容