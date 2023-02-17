# 下载地址
    https://github.com/cdr/code-server

    wget https://github.com/cdr/code-server/releases/download/v3.11.1/code-server-3.11.1-linux-amd64.tar.gz
    export PATH=$PATH:/root/code-server/bin

# ipv6启动
code-server --bind-addr [::]:80

# ssl
sed -i.bak 's/cert: false/cert: true/' ~/.config/code-server/config.yaml

# systemd
tree /usr/lib/systemd/system/ | grep ssh
tree /etc/systemd/system/ | grep ssh
cp /etc/systemd/system/sshd.service /usr/lib/systemd/system/code-server.service
//修改code-server.service
systemctl enable code-server --now
systemctl status code-server.service

root@snowfox:/usr/lib/systemd/system# cat code-server@.service
[Unit]
Description=code-server
After=network.target

[Service]
Type=exec
ExecStart=/usr/bin/code-server
Restart=always
User=%i

[Install]
WantedBy=default.target


# 配置文件
    ~/.config/code-server/config.yaml


dpkg -L code-server  | grep .service$

systemctl enable code-server.service --now
systemctl status code-server.service

//cat /usr/lib/systemd/system/code-server.service
[Unit]
Description=code-server
After=network.target

[Service]
Type=exec
ExecStart=/usr/bin/code-server --bind-addr 0.0.0.0:8888
Restart=always
User=root

[Install]
WantedBy=default.target



// cat /usr/lib/systemd/system/code-server.service
[Unit]
Description=code-server
After=network.target

[Service]
Environment="SHELL=/bin/bash"
Type=exec
ExecStart=/usr/bin/code-server
Restart=always
User=root

[Install]
WantedBy=default.target



# systemd 以普通用户运行程序
nano .config/code-server/config.yaml
nano /usr/lib/systemd/system/code-server.service
sudo systemctl daemon-reload
sudo systemctl restart code-server.service
sudo systemctl status code-server.service

root@debian:~# cat /usr/lib/systemd/system/code-server.service
[Unit]
Description=code-server
After=network.target

[Service]
Environment="SHELL=/bin/bash"
User=luoxue
Group=luoxue
Type=exec
ExecStart=/usr/bin/code-server
Restart=always

[Install]
WantedBy=default.target


