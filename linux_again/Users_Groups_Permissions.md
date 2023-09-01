# user

useradd
usermod
userdel
id
passwd
groups <username>

groupadd
groupmod
groupdel

chage
chown
chgrp

dnf provides useradd
dnf info shadow-utils

/etc/group
/etc/passwd
/etc/shadow

/etc/login.defs

/etc/sudoers

man 5 passwd
man 5 group


/etc/passwd
username : password : UID : GID : Description : Home directory : Login shell

useradd -h
useradd -D 
cat /etc/default/useradd

-u, --uid UID
-g, --gid GROUP   //main group
-G, --groups GROUPS // comma-separated list
-c, --comment COMMENT 
-d, --home-dir HOME_DIR
-s, --shell SHELL

/etc/group
group_name : password : GID : user_list

/etc/shadow
Each line of this file contains 9 fields, separated by colons (“:”)

login name
encrypted password
date of last password change
mininum password age
maximum password age
password warning period
password inactivity period 
account expiration date
reserved field

encrypted password
man crypt
被$分割成三部分
$6$I9B34vdmCnQjRCfz$Se0V1C.sWnE2.KbkElzs0mYhIsHB6GNxeFJc50iiaxUIOdyo0mEC9ZWhCs2uzW/pXvKrKl3k.LHz73oQua0991

$6表示用的是sha-512
$I9B34vdmCnQjRCfz  ，The salt password
$Se0V1C.sWnE2.KbkElzs0mYhIsHB6GNxeFJc50iiaxUIOdyo0mEC9ZWhCs2uzW/pXvKrKl3k.LHz73oQua0991
//An encrypted password hash


## example
userdel -r user01
useradd user01 --uid 1002 --groups wheel --comment "User 01" --home-dir /home/user01 --shell /bin/bash
useradd user02 -u 1004 -g wheel -c "User 02" -d /home/user02 -s /bin/bash

usermod -aG user01,root user02

groupadd finance
grep finance /etc/group
usermod -aG finance user01
usermod -aG finance user02
grep finance /etc/group

groupadd -g 1099 acounting
tail -n1 /etc/group
groupmod -n accounting acounting
tail -n1 /etc/group
groupmod -g 1111 accounting

chage -l user02
chage --mindays 0 --warndays 7 --inactive 3 --expiredate 2030-01-01 user02


usermod -L user02
grep user02 /etc/shadow
usermod -U user02
grep user02 /etc/shadow

usermod -s /sbin/nologin user02
grep user02 /etc/passwd

su - usertest
-, -l, --login

usermod -s /bin/bash user02
su - user02

usermod -aG wheel user02
groups user02

su - user02
sudo dnf update

sudo -i



# /etc/sudoers
user hosts = (run-as) commands

root    ALL=(ALL)       ALL
%wheel  ALL=(ALL)       ALL
%wheel        ALL=(ALL)       NOPASSWD: ALL


# xxx
ls -l /usr/bin/bash /etc/passwd /etc/shadow 
ls -ld /tmp
read
write
executable
rwx

touch file.txt
ls -l file.txt

chmod g+w file.txt
ls -l file.txt

chmod o-r file.txt
ls -l file.txt

chmod 755 file.txt
chmod 640 file.txt
chmod 600 file.txt


umask //022
umask -S
//创建文件默认是666，减去umask变成644
//创建目录默认是777，减去umask变成755
//目录的x权限表示能进入目录 ？？？？

umask 000
touch file2.txt
ls -l file2.txt

umask 066
touch file3.txt
ls -l file3.txt

cd /var/tmp
mkdir finance accounting
groupadd finance
groupadd accounting
chgrp accounting accounting/
chgrp finance finance/
ls -ld finance accounting

adduser sonia
adduser matilde
usermod -aG finance sonia
usermod -aG accounting matilde
groups sonia
groups matilde

cd finance/
mkdir personal_sonia
chown sonia personal_sonia
chgrp sonia personal_sonia/
ls -l

cd ../accounting/
mkdir personal_matilde
chown matilde:matilde personal_matilde/
ls -l

cp -rv /usr/share/doc/audit personal_matilde/
ls -l personal_matilde/audit/

# Set-UID Set-Guid
## SUID
ls -l /usr/bin/passwd

touch testsuid
ls -l testsuid
chmod u+s testsuid
ls -l testsuid
chmod u+x testsuid
ls -l testsuid

## SGID
ls -l /usr/bin/write

touch testsgid
chmod g+xs testsgid
ls -l testsgid

mkdir testdir
chmod g+s testdir
chgrp accounting testdir/
ls -ld testdir/
cd testdir/
touch test.txt
ls -l

## sticky bit
 when a user creates a file in a directory with the sticky bit, only that user can edit or delete that file.

//自己测试
//

rm -fr *
mkdir testdir
chmod o+t testdir/

cd testdir/
touch test.txt
chmod 666 test.txt
echo "xxx" >> test.txt
cat test.txt
useradd usertest
su - usertest
echo "usertest" >> /var/tmp/accounting/testdir/test.txt
cat /var/tmp/accounting/testdir/test.txt

touch test2.txt
ls -lh
