@REM 原文链接： ttps://blog.csdn.net/jaray/article/details/130722929
@REM
@REM - 预装Win11家庭中文版由于微限制必须要联网激活，需要使用微软账户登入才可以继续开机过程，联网后系统会自动激活。
@REM - 新电脑，安装以后，会要求激活，我打电话问了厂家，居然告诉我，让我用新电脑连手机，使用手机的热点，去激活电脑。在没有网络的情况下，现在连电脑都无法激活，厂家这么说，我不知道是他们不愿意说，还是真的不知道，我是无法相信这种说法，我在网上搜了很多方法，带图的，结束“调出任务管理器找到 Network Connection Flow进程”，这种方法是不行的，根本没有这个进程。
@REM - 还有一种方法是：打开任务管理器，这个打开方法下面有，简单看完各个硬件参数，这个方法也扯了。
@REM
@REM 由于很多厂家基本都是联网后就不符合无理由退货的条件了，所以我整理了以下的几种跳过联网的办法，可以参考。
@REM
@REM 一，win11初次开机跳过联网激活方法1
@REM
@REM 1、按下Shift+F10或者是Fn+Shift+F10快捷键调出命令提示符窗口;
@REM 2、输入taskmgr，并按下回车键;
@REM 3、接着就会出现任务管理器页面，我们点击“详细信息”;
@REM 4、找到“Network Connection Flow”进程或者是“网络连接流”进程，点击“结束任务”;
@REM 5、这样就可以跳过联网；
@REM ６、这种方法就是上面我提到过的方法，我这台电脑也不行。
@REM 二，win11初次开机跳过联网激活方法2
@REM
@REM 1、首次进入Windows11家庭版系统并进行设置，到联网界面，按下【Shift+F10】快捷键（无效可试下【FN+Shfit+F10】）
@REM 2、在出现的命令提示符页面输入OOBE\BYPASSNRO，按回车键，等待电脑重启完成
@REM 3、重启后，在联网界面会有“我没有Internet连接”选项，点击此选项即可跳过联网
@REM
@REM 三、通过修改注册表跳过联网界面３
@REM １、按Shift键+F10键（不成功按Fn+Shift+F10）；
@REM ２、弹出命令提示符窗口，输入regedit回；
@REM ３、然后在打开的注册表编辑器界面中，找到下方路径——计算机\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE
@REM ４、接下来在注册表的右侧空白处鼠标右键，在弹出的右键菜单项中，新建一个DWORD(32位)值(D)。新建的值重命名为: BypassNRO，双击打开BypassNRO这个值，然后在编辑DWORD(32位)值窗口，将数值数据修改为【1】，再点击【确定】；
@REM ５、最后在cmd窗口再输入命令：logoff，回车；
@REM ６、可以跳过联网。



@REM Shift+F10

OOBE\BYPASSNRO