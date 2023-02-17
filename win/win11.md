# 跳过TPM2.0

不要慌，在这个界面按 Shift+F10，打开命令行界面，输入 regedit 打开注册表，然后定位到：

HKEY_LOCAL_MACHINE\SYSTEM\Setup
创建一个名为“LabConfig”的项，接着在“LabConfig”下创建两个 DWORD 值：

键为“BypassTPMCheck”，值为“00000001”
键为“BypassSecureBootCheck”，值为“00000001”
保存退出后，上图的提示就消失了，大家就可以正常安装 Win11。



# 远程桌面
sysdm.cpl
mstsc


# 账户管理
compmgmt.msc
devmgmt.msc

regedit

gpedit.msc

# 自动登陆用户 auto login win10
netplwiz
https://www.sysgeek.cn/auto-login-windows-10/
https://www.lanka.cn/win10denglu_4411.html

HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
//修改以下两个字符串
AutoAdminLogon 1
DefaultUserName admin

https://www.makeuseof.com/windows-11-missing-auto-login-fix/
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device
DevicePasswordLessBuildVersion 0


# 取消锁屏密码
https://www.isumsoft.com/windows-10/how-to-disable-lock-screen-in-windows-10.html
//知识关闭锁屏


# 多语言
https://www.bennorummens.com/products/windows-10/how-to-create-a-multi-language-windows-10-image/
https://learn.microsoft.com/zh-cn/windows-hardware/manufacture/desktop/add-language-packs-to-windows?view=windows-11
