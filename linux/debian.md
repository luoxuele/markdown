# 允许root用户ssh登录
    vi /etc/ssh/sshd_config
    PermitRootLogin yes


# 查看系统版本
    lsb_release -a


# 修改国内源
    Debian 的软件源配置文件是 /etc/apt/sources.list
    sudo apt install apt-transport-https ca-certificates

    # 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
    deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye main contrib non-free
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye main contrib non-free
    deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-updates main contrib non-free
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-updates main contrib non-free

    deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-backports main contrib non-free
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-backports main contrib non-free

    deb https://mirrors.tuna.tsinghua.edu.cn/debian-security bullseye-security main contrib non-free
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/debian-security bullseye-security main contrib non-free

# base
    git
    tree
    psmisc(pstree)
    screen
    curl
    gcc


# iproute2
iproute2包，代替传统的net-tools
iproute2
network-manager NetworkManager.service
    nmcli
    nmtui
    nm-connection-editor

dpkg -L iproute2 | grep bin

ip address show
ip route show

cat /etc/NetworkManager/system-connections/Wired\ connection\ 1.nmconnection

cat /etc/hostname
cat /etc/hosts
cat /etc/resolv.conf
cat /etc/nsswitch.conf


systemctl status networking.service
systemctl status NetworkManager.service


apt list | grep -i ^network
dpkg -L network-manager | grep bin



# 查询命令
dpkg -S /bin/netstat
which ifup


apt install apt-file
apt-file update
apt-file search ifup | grep bin
apt-file search bridge | grep bin/bridge


cat /etc/network/interfaces
apt-file search  /etc/network/interfaces

ifconfig -a
apt-file search ifconfig  | grep bin


https://linoxide.com/iproute2-vs-net-tools/