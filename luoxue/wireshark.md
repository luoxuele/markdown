# wireshark
## 捕获过滤器
    Berkeley Packet Filter(BPF)
    host 82.156.32.144 and port 8899
    host 192.168.10.129 && arp

## capture filter
host 192.168.10.128
src host 192.168.10.128
dst host 192.168.10.128
net 192.168.10.0/24     net 192.168.0.0 mask 255.255.255.0

host 82.156.32.144 and port !8888

icmp6 and ip6[40] = 134     //从0开始的字节数组，去掉14字节的以太网帧头，ip6[40]刚好是icmpv6的type字段
icmp6 and ip6[40] == 134
icmp6 and ip6[40] == 0x86
ip6 and ip6[6] == 58 and ip6[40] == 0x86
ip6[6] == 58 and ip6[40] == 0x86
icmp6 and icmp6[icmp6type] == icmp6-routeradvert


二层
  ether host 02:01:cc:9a:1a:d8  
  ether src host 02:01:cc:9a:1a:d8  
  ether dst host 02:01:cc:9a:1a:d8  
  ether proto 0x0806    //arp协议

三层：
    host
    net
    icmp
    icmp6



四层：
    port 53 //udp 53是用于dns报文

## 抓包测试命令
    ping 192.168.10.128
    nslookup www.baidu.com
    ipconfig /renew6 以太网
    tracert 82.156.32.144

    traceroute baidu.com



## 显示过滤器


## arp
    arp -a
    cat /proc/net/arp
    ip neigh show
    ip neigh flush dev eth0
    nmap -sn -PR 192.168.10.1/24

## reference
    https://www.tcpdump.org/manpages/pcap-filter.7.html


# tcpdump
    apt depends tcpdump
    apt show libpcap0.8


https://www.stix.id.au/wiki/tcpdump_Examples
Capture of IPv6 advertisement message via tcpdump
tcpdump -vvvv -ttt -i eth0 icmp6 and 'ip6[40] = 134'
tcpdump -c 1 icmp6[icmp6type] == icmp6-routeradvert

libpcap
winpcap
npcap

tcp[0:2] > 1500  tcp开始两个字节是src Port,0 代表开始的index，2代表长度
tcp port 443 
tcp[2:2] = 443
tcp[2:2] = 0x01bb

tcp port 21 or 22  //ftp


host 82.156.32.144 && tcp port 22