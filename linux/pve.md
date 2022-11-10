# 配置ipv6
https://www.right.com.cn/forum/thread-8077677-1-1.html

cat /proc/sys/net/ipv6/conf/vmbr0/accept_ra
cat /proc/sys/net/ipv6/conf/vmbr0/autoconf
cat /proc/sys/net/ipv6/conf/vmbr0/forwarding

nano /etc/sysctl.conf
net.ipv6.conf.all.accept_ra=2
net.ipv6.conf.default.accept_ra=2
net.ipv6.conf.vmbr0.accept_ra=2
net.ipv6.conf.all.autoconf=1
net.ipv6.conf.default.autoconf=1
net.ipv6.conf.vmbr0.autoconf=1

# ssh
nano /etc/ssh/sshd_config
#PermitRootLogin without-password
PermitRootLogin yes

#PasswordAuthentication no
PasswordAuthentication yes


# 修改ipv4
nano /etc/network/interfaces
nano /etc/issue
nano /etc/hosts

systemctl restart networking.service


# 扩容lvm
https://www.wnark.com/archives/118.html