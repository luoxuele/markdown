https://github.com/fatedier/frp
https://github.com/fatedier/frp/blob/dev/README_zh.md
https://gofrp.org/zh-cn/

https://gofrp.org/zh-cn/docs/examples/ssh/


https://github.com/fatedier/frp/releases/download/v0.52.3/frp_0.52.3_linux_amd64.tar.gz
https://github.com/fatedier/frp/releases/download/v0.52.3/frp_0.52.3_windows_amd64.zip


# 服务端
wget https://github.com/fatedier/frp/releases/download/v0.54.0/frp_0.54.0_linux_amd64.tar.gz
./frps -c ./frps.toml

## frps.service
sudo vim /etc/systemd/system/frps.service
systemctl enable frps.service --now
systemctl status frps.service

[Unit]
# 服务名称，可自定义
Description = frp server
After = network.target syslog.target
Wants = network.target

[Service]
Type = simple
# 启动frps的命令，需修改为您的frps的安装路径
ExecStart = /root/luoxue/frp/frps -c /root/luoxue/frp/frps.toml

[Install]
WantedBy = multi-user.target


# 客户端
sudo vim /etc/systemd/system/frpc.service

[Unit]
# 服务名称，可自定义
Description = frpc client
After = network.target syslog.target
Wants = network.target

[Service]
Type = simple
# 启动frpc的命令，需修改为您的frpc的安装路径
ExecStart = /home/luoxue/frp/frpc -c /home/luoxue/frp/frpc.toml

[Install]
WantedBy = multi-user.target

## 客户端配置文件
