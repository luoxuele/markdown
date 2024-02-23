# 1. 安装并查看服务启动状态
    sudo dnf install firewalld
    sudo systemctl status firewalld
    sudo systemctl is-enabled firewalld.service

# 2. 管理区域
    sudo firewall-cmd --state
    sudo firewall-cmd --get-default-zone
    sudo firewall-cmd --get-zones

    //把网络接口添加到特定区域
    sudo firewall-cmd --zone=public --add-interface=ens160

# 3. 管理端口和服务
    sudo dnf install httpd -y
    sudo systemctl restart httpd
    sudo systemctl status httpd
    http://192.168.80.100/

    sudo firewall-cmd --zone=public --add-port=80/tcp
    sudo firewall-cmd --zone=public --add-service=http

    sudo firewall-cmd --zone=public --remove-port=80/tcp
    sudo firewall-cmd --zone=public --remove-service=http

    sudo firewall-cmd --zone=public --list-all

# 4. 永久生效
    sudo firewall-cmd --zone=public --add-service=http --permanent
    sudo firewall-cmd --reload

    sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
    sudo firewall-cmd --zone=public --list-all
    // 加了 --permanent后，并没有立即生效
    sudo cat /etc/firewalld/zones/public.xml


    # nstables
    nft list ruleset | less