telnet 192.168.10.1 99
H3C Luoxue123

ip6tables -F
ip6tables -X
ip6tables -P INPUT ACCEPT
ip6tables -P OUTPUT ACCEPT
ip6tables -P FORWARD ACCEPT

ip6tables-save > /etc/ip6tables.rules
cat /etc/ip6tables.rules
ip6tables-restore < /etc/ip6tables.rules

echo 3 > /proc/sys/vm/drop_caches


https://www.right.com.cn/forum/forum.php?mod=viewthread&tid=8169756&extra=page%3D1&mobile=no

https://www.right.com.cn/forum/thread-8291457-10-1.html
https://www.right.com.cn/forum/thread-8301535-1-1.html
telnet 192.168.124.1 99
H3C
“your password”
ip6tables -P OUTPUT ACCEPT
ip6tables -D FORWARD -j ACCEPT
ip6tables -I FORWARD -j ACCEPT
ip6tables-save > /etc/firewall.user
ip6tables-restore < /etc/firewall.user
echo 3 > /proc/sys/vm/drop_caches
exit 0