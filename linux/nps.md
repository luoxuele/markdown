# 相关链接
https://github.com/ehang-io/nps
https://github.com/ehang-io/nps

# 下载
https://github.com/ehang-io/nps/releases
https://github.com/ehang-io/nps/releases/download/v0.26.10/linux_amd64_server.tar.gz


# server 使用方法
    下载解压，进入目录
    //1. 执行安装命令
    sudo ./nps install  

    //2. 启动
    sudo nps [start | stop | restart]

    // 配置文件
    /etc/nps/*
    //可以修改web_port,web_ip, username,password
    vi /etc/nps/conf/nps.conf

    # 登录并创建客户端
    http://82.156.32.144:8080/

# client
    mkdir npc
    tar xzvf linux_amd64_client.tar.gz -C ./npc

    // 1. 直接启动
    ./npc -server=82.156.32.144:8024 -vkey=7glofi2dnqlgqcfh -type=tcp

    // 2. 注册安装
    sudo ./npc install -server=82.156.32.144:8024 -vkey=7glofi2dnqlgqcfh -type=tcp

    sudo npc [stop | start]

    ./npc uninstall  //卸载注册


# 树莓派 客户端
wget https://github.com/ehang-io/nps/releases/download/v0.26.10/linux_arm64_client.tar.gz