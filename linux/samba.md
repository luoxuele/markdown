https://computingforgeeks.com/how-to-configure-samba-share-on-debian/
https://www.samba.org/samba/docs/old/Samba3-HOWTO/install.html

sudo apt install -y samba smbclient cifs-utils


sudo vim /etc/samba/smb.conf

[luoxue]
    comment = Private Folder
    path = /home/luoxue
    writable = yes
    guest ok = no
    valid users = @smbshare
    force create mode = 770
    fore directory mode = 770
    inherit permissions = yes

sudo groupadd smbshare
sudo usermod -a -G smbshare luoxue //追加到smbshare组中

//设置luoxue用户的samba密码为luoxue123
sudo smbpasswd -a luoxue


testparm /etc/samba/smb.conf
smbclient -L localhost

# windows 挂在samba

network -> Map Network Drive
\\192.168.1.200\luoxue

