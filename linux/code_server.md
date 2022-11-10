# 下载地址
    https://github.com/cdr/code-server

    wget https://github.com/cdr/code-server/releases/download/v3.11.1/code-server-3.11.1-linux-amd64.tar.gz
    export PATH=$PATH:/root/code-server/bin

# ipv6启动
code-server --bind-addr [::]:80

# ssl
sed -i.bak 's/cert: false/cert: true/' ~/.config/code-server/config.yaml

# 配置文件
    ~/.config/code-server/config.yaml

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

