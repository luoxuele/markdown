sudo apt install openssh-server
sudo apt install nfs-kernel-server nfs-common
sudo apt install mpich vim -y
sudo apt install  python3 -y

cat /etc/apt/sources.list | grep -i universe

sudo nmcli connection modify Wired\ connection\ 1 con-name eth1
nmcli connection show eth1 | grep -i gateway
sudo nmcli connection modify eth1 ipv4.addresses 192.168.80.128/24 ipv4.gateway
sudo nmcli connection modify eth1 ipv4.addresses 192.168.80.128/24 ipv4.gateway 192.168.80.2 ipv4.dns 8.8.8.8 ipv4.dns 114.114.114.114
sudo nmcli connection up eth1

# ssh 私钥登录
ssh-keygen.exe -t rsa -f ./key/test

mkdir .ssh
touch .ssh/authorized_keys
chmod 600 .ssh/authorized_keys

sudo vim /etc/ssh/sshd_config
    PubkeyAuthentication yes
    PasswordAuthentication no
sudo systemctl restart sshd

//把test.pub 的内容放到 .ssh/authorized_keys文件中
cat -n .ssh/authorized_keys

https://docs.conda.io/projects/miniconda/en/latest/
apt list | grep -i dhcp-server
apt list | grep -i apache2
apt list | grep -i tftp

isc-dhcp-server
apache2
tftpd-hpa

sudo apt install apache2 isc-dhcp-server tftpd-hpa -y

cat /etc/default/tftpd-hpa
sudo systemctl status tftpd-hpa.service

sudo nano /etc/default/tftpd-hpa
sudo systemctl restart tftpd-hpa
ss -anp | grep 69



https://docs.conda.io/projects/miniconda/en/latest/
https://old-releases.ubuntu.com/releases/12.04/


wget http://82.156.32.144:8000/sources.list
https://www.jianshu.com/p/3fd50eaf9b6c

https://mirrors.ustc.edu.cn/help/ubuntu-old-releases.html


# gpg错误
https://blog.csdn.net/s464036801/article/details/8219513
gpg –-keyserver subkeys.pgp.net –recv 40976EAF437D05B5
gpg --export -armor 40976EAF437D05B5 | sudo apt-key add -



# tftpd
sudo apt install tftpd-hpa -y
sudo systemctl status tftpd-hpa.service

sudo nano /etc/default/tftpd-hpa
cat /etc/default/tftpd-hpa
# /etc/default/tftpd-hpa

TFTP_USERNAME="tftp"
TFTP_DIRECTORY="/srv/tftp"
TFTP_ADDRESS=":69"
TFTP_OPTIONS="--create --secure"

sudo chown tftp:tftp /srv/tftp
sudo chown -R tftp:tftp /srv/tftp
ls -l /srv

sudo systemctl restart tftpd-hpa.service
sudo systemctl status tftpd-hpa.service

sudo systemctl restart tftpd-hpa.service
sudo systemctl status tftpd-hpa.service
sudo systemctl status ufw
sudo systemctl disable ufw --now
sudo systemctl status ufw

https://docs.conda.io/projects/miniconda/en/latest/https://docs.conda.io/projects/miniconda/en/latest/
https://docs.conda.io/projects/miniconda/en/latest/
https://mirrors.tuna.tsinghua.edu.cn/help/anaconda/