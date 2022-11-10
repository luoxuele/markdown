https://github.com/messense/aliyundrive-webdav

aliyundrive-webdav --host :: -p 8899
aliyundrive-webdav --host :: -p 8899 -U luoxue -W Luoxue123

apt install screen -y

curl --user luoxue:Luoxue123 -T ipc-20221029-153304.mp4 http://127.0.0.1:8899/webdav/
curl --user luoxue:Luoxue123 -T xxx.txt http://127.0.0.1:8899/webdav/




systemctl status aliyundrive-webdav.service

ll -h /etc/systemd/system/aliyundrive-webdav.service
ll -h /usr/lib/systemd/system/

systemctl enable aliyundrive-webdav.service
Created symlink /etc/systemd/system/multi-user.target.wants/aliyundrive-webdav.service → /etc/systemd/system/aliyundrive-webdav.service.


root@orangepi3:~# cat /etc/systemd/system/aliyundrive-webdav.service
[Unit]
Description=AliyunDrive WebDAV
After=network.target

[Service]
Type=simple
Environment="REFRESH_TOKEN="
ExecStart=/usr/bin/aliyundrive-webdav --auto-index -w /etc/aliyundrive-webdav
KillMode=process
Restart=on-failure

[Install]
WantedBy=multi-user.target



# 修改时区
timedatectl
timedatectl list-timezones | grep -i shanghai
/usr/share/zoneinfo/

timedatectl set-timezone Asia/Shanghai


root@orangepi3:~# ll -h /etc/localtime
lrwxrwxrwx 1 root root 35 Oct 30 12:06 /etc/localtime -> ../usr/share/zoneinfo/Asia/Shanghai