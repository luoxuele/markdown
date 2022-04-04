# wireshark
## 捕获过滤器
    Berkeley Packet Filter(BPF)
    host 82.156.32.144 and port 8899
    host 192.168.10.129 && arp

## 显示过滤器


## arp
    arp -a
    cat /proc/net/arp
    ip neigh show
    ip neigh flush dev eth0
    nmap -sn -PR 192.168.10.1/24

## reference
    https://www.tcpdump.org/manpages/pcap-filter.7.html