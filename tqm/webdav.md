https://zhuanlan.zhihu.com/p/490499922

1. services.msc
    WebClient 改为自动

2. regedit
   计算机\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient\Parameters
   把 BasicAuthLevel 改为2

3. 重启webClient服务

4. 添加一个网络位置
   http://192.168.10.128/ 
   用户名密码： luoxue Luoxue123


apt install gcc -y
export http_proxy=http://192.168.10.133:10811
export https_proxy=http://192.168.10.133:10811

go mod init ddns
go mod tidy

go get "github.com/cloudflare/cloudflare-go" 
go get "github.com/google/gopacket" 
go get "github.com/google/gopacket/layers" 
go get "github.com/google/gopacket/pcap"

root@orangepi3:~/git/ddns# go build .

root@orangepi3:~/git/ddns# cat /usr/lib/systemd/system/code-server.service
[Unit]
Description=code-server
After=network.target auditd.service

[Service]
ExecStart=/usr/bin/code-server
Restart=on-failure

[Install]
WantedBy=multi-user.target
Alias=code-server.service

nano  /usr/lib/systemd/system/ddns.service
[Unit]
Description=my ddns
After=network.target auditd.service

[Service]
ExecStart=/root/git/ddns/ddns
Restart=on-failure

[Install]
WantedBy=multi-user.target
Alias=ddns.service

root@orangepi3:~/git/ddns# systemctl status ddns
root@orangepi3:~/git/ddns# systemctl enable  ddns --now
Created symlink /etc/systemd/system/ddns.service → /usr/lib/systemd/system/ddns.service.
Created symlink /etc/systemd/system/multi-user.target.wants/ddns.service → /usr/lib/systemd/system/ddns.service.