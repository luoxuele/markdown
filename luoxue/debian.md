# debian
## reference
    https://www.debian.org/doc/manuals/debian-reference/
## package
 ### apt
    update
    upgrade
    install
    remove
    purge
    clean
    full-upgrade
    autoremove
    autoclean
    autopurge
    show
    search
    
    download
    help
    depends
    dist-upgrade
    edit-sources
    moo
    policy
    rdepends
    showsrc
    source
    
    tree /etc/apt/ -h
    tree /var/lib/apt -h
    gpg    GNU Privacy Guard 公钥加密，私有解密
    
### dpkg
    tree /var/lib/dpkg/ -L 1
    

    //查看net-tools包提供了哪些命令
    dpkg -L net-tools | grep bin
    dpkg -S /bin/netstat
    apt-file search netstat | grep bin
    
## nmcli
    ls /etc/NetworkManager/system-connections
    nmcli connection modify enp3s0 -ipv4.address 192.168.1.129/24
    nmcli connection modify enp3s0 ipv4.address "" ipv4.gateway ""



    