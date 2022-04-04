# kali

## 更换国内源
    cp /etc/apt/sources.list /etc/apt/sources.list.bak
    deb https://mirrors.tuna.tsinghua.edu.cn/kali kali-rolling main contrib non-free
    apt update
    apt upgrade -y

## 设置系统语言
    //查看
    env | grep LANG
    export LANG=en_US.UTF-8
    
    //设置
    dpkg-reconfigure locales
    export LANG=zh_CN.UTF-8
    https://people.debian.org/~schultmc/locales.html
    
    //非交互式
    locale-gen --purge zh_CN.UTF-8

## 设置系统时区
    dpkg-reconfigure tzdata
    
## 安装搜狗拼音
    https://pinyin.sogou.com/linux/
    apt update
    apt upgrade -y
    
    dpkg -i sogoupinyin_3.4.0.9700_amd64.deb
    apt install -f
    
    fcitx-config-gtk3
    
## 固定ipv4并关闭ipv6
    nmcli connection modify Wired\ connection\ 1 connection.id eth0
    nmcli connection modify eth0 ipv4.method manual ipv4.address 192.168.10.134 ipv4.gateway 192.168.10.1 ipv4.dns 192.168.10.1 ipv6.method disabled
    nmcli connection up eth0
    mcli connection modify Wired\ connection\ 1 ipv4.method manual ipv4.addresses 192.168.10.134/24 ipv4.gateway 192.168.10.1 ipv4.dns 192.168.10.1 ipv6.method disabled autoconnect yes

    