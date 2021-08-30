# mysql 下载安装（centos8）
## 1. 下载地址
    https://www.mysql.com/downloads/
    wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-8.0.20-1.el8.x86_64.rpm-bundle.tar
    
    下载慢可以通过清华源下载
    wget https://mirrors.tuna.tsinghua.edu.cn/mysql/downloads/MySQL-8.0/mysql-8.0.20-1.el8.x86_64.rpm-bundle.tar
    
    包校验
    md5sum 文件名
    sha1sum 文件名
    https://mirrors.tuna.tsinghua.edu.cn/mysql/downloads/MySQL-8.0/mysql-8.0.20-1.el8.x86_64.rpm-bundle.tar.md5
    
## 2. 解压并安装
    1.进入到文件所在目录，并解压到用户的家目录
    tar xvf mysql-8.0.20-1.el8.x86_64.rpm-bundle.tar -C ~
    
    sudo rpm -ivh mysql-community-server-8.0.20-1.el8.x86_64.rpm  mysql-community-common-8.0.20-1.el8.x86_64.rpm mysql-community-client-8.0.20-1.el8.x86_64.rpm  mysql-community-libs-8.0.20-1.el8.x86_64.rpm
