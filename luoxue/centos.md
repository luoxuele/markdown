# centos
## 查看版本
    cat /etc/redhat-release
    
## 修改yum源
    cd /etc/yum.repos.d/
    sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

## dnf
    dnf list | grep net-tools
    dnf list installed
    rpm -qa
    rpm -qa | wc -l
    rpm -qf /usr/sbin/arping    //文件属于哪个安装包
    dnf search --all netstat
    rpm -ql net-tools | grep bin
    
