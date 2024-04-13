https://computingforgeeks.com/how-to-configure-samba-share-on-debian/
https://www.samba.org/samba/docs/old/Samba3-HOWTO/install.html


# 1. 安装samba服务
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

# 2. 设置用户密码
        //pdbedit -L -v  查看samba用户数据库
cat /etc/group | grep -i sambashare
sudo groupadd smbshare
sudo usermod -a -G smbshare luoxue //追加到smbshare组中

//设置luoxue用户的samba密码为luoxue123
sudo smbpasswd -a luoxue


testparm /etc/samba/smb.conf
smbclient -L localhost

# windows 挂在samba

network -> Map Network Drive
\\192.168.1.200\luoxue




# rhel
sudo dnf install samba
sudo systemctl status smb
sudo systemctl enable smb --now

## 临时关闭friewalld 和selinux
systemctl disable firewalld
setenforce 0
getenforce //查看


sudo nano /etc/samba/smb.conf
[download]
        comment = Private Files
        path = /download
        valid users = luoxue
        guest ok = no
        writable = yes
        browsable = yes


sudo testparm
sudo systemctl restart smb

sudo firewall-cmd --permanent --add-service=samba
sudo firewall-cmd --reload
sudo firewall-cmd --list-services

sudo semanage fcontext -a -t samba_share_t "/download(/.*)?"
sudo restorecon -Rv /download/
sudo semanage fcontext -a -t etc_t "/etc/samba/smb.conf"
sudo restorecon /etc/samba/smb.conf


//添加用户
sudo smbpasswd -a luoxue 

//修改密码
sudo smbpasswd username

\\192.168.10.129


## 完整配置
dnf install samba samba-client cifs-utils

useradd luoxue
smbpasswd -a luoxue

mkdir -p /var/share/samba
chown -R luoxue:luoxue /var/share/samba
chmod -R 755 /var/share/samba
ls -ld /var/share/samba/

[share]
        path = /var/share/samba
        writable = yes
        browsable = yes
        guest ok = yes
        read only = no

[download]
        comment = Private Files
        path = /download
        valid users = luoxue
        guest ok = no
        writable = yes
        browsable = yes

[d]
        comment = Private Files
        path = /mnt/d
        valid users = luoxue
        guest ok =  no
        writable = yes
        browsable = yes


smbclient -L //localhost/
\\192.168.18.130\share



# linux挂载samba
apt install smbclient cifs-utils

// 命令挂载
mount -t cifs //127.0.0.1/d /root/d -o port=6445,username=luoxue


 mount -t cif //137.175.28.139/root /mnt/rak username=root

mount -t cifs -o port=6445,username=root,password=Luoxue123 //137.175.28.139/root /mnt/rak
umount /mnt/rak