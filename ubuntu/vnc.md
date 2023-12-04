# reference
https://www.cnblogs.com/milton/p/16730512.html

sudo apt -y autoremove --purge tigervnc-standalone-server


sudo apt install tigervnc-standalone-server -y
vncserver //桌面必须先注销
vncpasswd

vncserver -list
vncserver -kill :2

vncserver -localhost no

