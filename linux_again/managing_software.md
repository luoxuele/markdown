# dnf

## help
dnf list --help

dnf list | wc -l
dnf list | grep -i mongo
dnf list installed | wc -l
dnf list --installed | wc -l
dnf list updates


dnf repolist 
dnf repolist -v == dnf repoinfo
dnf repolist --all | --enable | --disabled

dnf provides ss
which -a ss

dnf info iproute

dnf group list

dnf provides "*/netstat"


dnf install iproute
dnf install /usr/sbin/ss
dnf install ./code-server-4.16.1-amd64.rpm

dnf repoquery --list ./code-server-4.16.1-amd64.rpm
rpm -ql code-server  | wc -l
dnf repoquery --list ./code-server-4.16.1-amd64.rpm  | wc -l


## 配置文件
cat /etc/dnf/dnf.conf
tree /etc/yum.repos.d/

