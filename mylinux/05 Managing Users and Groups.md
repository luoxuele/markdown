UID
GID

Real ID
Effective ID
Saved ID

# vocabulary
normal user
system user

user group
system group
primary group

# files
/etc/passwd      //User account information.
/etc/shadow         //Secure user account information.
/etc/group       //Group account information.
/etc/gshadow      //Secure group account information.

/etc/subgid     //Per user subordinate group IDs.
/etc/subuid      //Per user subordinate user IDs.
/etc/login.defs //Shadow password suite configuration.

## passwd
login name
optional encrypted password
numerical user ID
numerical group ID
user name or comment field
user home directory
optional user command interpreter

# command
dnf provides *bin/useradd
rpm -ql shadow-utils  | grep bin

useradd
userdel
usermod
groupadd
groupdel
groupmod
passwd

adduser

## useradd
-G, --groups GROUP1[,GROUP2,...[,GROUPN]]]
-m, --create-home
-r, --system
-s, --shell SHELL
-u, --uid UID
-g, --gid GROUP
-U, --user-group
-e, --expiredate EXPIRE_DATE
-f, --inactive INACTIVE

useradd test
useradd -s /bin/bash test2
useradd -m test3

## zsh
apt install zsh
https://ohmyz.sh/#install
https://github.com/ohmyzsh/ohmyzsh

## usermod
cat /etc/shells
usermod -s /usr/bin/zsh test
passwd test

cat /etc/sudoers
%sudo ALL=(ALL) NOPASSWD: ALL
cat /etc/group | grep sudo
usermod -aG sudo test

useradd -m -u 9999 test2
useradd -m test3
userdel -r test2





# 准备
dnf install man-pages

# 01
id
id root
id test1

sudo id -un
sudo -u test1 id -gn

ls -l /usr/bin/passwd
ps -a | grep passwd
ps -eo pid,euser,ruser,rgroup | grep 4921


# 02 Creating a Human User with useradd
useradd test1
id test1
ls -a /home/test1/
passwd test1
passwd -e test1
passwd -e test1
useradd -mU test2

//指定用户组
useradd -G test2,test1 test3

# 03 Creating a System User with useradd
useradd -rs /bin/false service1


# 07 Adding Users to Groups with usermod
groupadd -r sudo
cat /etc/sudoers
usermod -aG wheel test3


# 08 Creating Users with adduser on Ubuntu
sudo adduser stash
stat /usr/sbin/adduser //fedora linux 的adduser 是 一个软连接，指向useradd, debian系的是单独的程序

# 13 Deleting a User with useradd
userdel test1
userdel -r test1


# 16 Finding and Managing ALL Files for a User
find / -uid 1007
find /home -uid 1000
find / -gid 1002
find / -name luoxue
find / -group test

# 17 Using su to Be Root
su -l
    -, -l, --login
        Start  the shell as a login shell with an environment similar to a real login:

exit
visudo //修改/etc/sudoers 配置文件

%sudo ALL=(ALL) ALL
luoxue  ALL=(ALL) ALL


# manpages
apt install manpages manpages-zh
man man
 /etc/manpath.config    //man-db 配置文件。
/usr/share/man  //全局手册页层次结构。

man -M /usr/share/man/zh_CN/ 5 passwd
man -M /usr/share/man/ 5 passwd
alias man="man -M /usr/share/man/"
alias cman="/usr/share/man/zh_CN/"



