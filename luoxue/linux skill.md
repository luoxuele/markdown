# linux skill
## netcat
    listen
    port
    udp
    keep
    nc -lp 8888
    nc -lup 8888
    nc -lk 8888
    
    ps -ef | grep nc
    ll /proc/231707/fd
    IO Multiplexing io多路复用
    
# 用户管理
    /etc/passwd
    /etc/group
    cat /etc/shadow
    useradd usermod groupadd groupdel gpasswd groups
    id
    passwd
    
    useradd luoxue
    userdel luoxue
    tail -n 5 /etc/{passwd,group,shadow}
    useradd u2 -s /bin/bash -m
    useradd u3 -s /bin/bash -m -g root
    useradd u4 -s /bin/bash -m -G root -p u4
    usermod -g root u4
    gpasswd -a luoxue root
    gpasswd -M luoxue,user1 root
    groups luoxue
    id luoxue
    