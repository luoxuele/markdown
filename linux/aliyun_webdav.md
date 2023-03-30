 sudo dpkg -i aliyundrive-webdav_1.10.4_amd64.deb

screen -S aliyun
aliyundrive-webdav -p 1234 --host :: 
aliyundrive-webdav -p 1234 --host :: --auth-user luoxue --auth-password Luoxue123

sudo nano /etc/systemd/system/aliyundrive-webdav.service
sudo systemctl enable aliyundrive-webdav.service --now

sudo systemctl daemon-reload
sudo systemctl restart aliyundrive-webdav.service
sudo systemctl status aliyundrive-webdav.service

sudo systemctl disable aliyundrive-webdav.service
Removed /etc/systemd/system/multi-user.target.wants/aliyundrive-webdav.service.
sudo systemctl stop  aliyundrive-webdav.service
sudo systemctl status aliyundrive-webdav.service



# 上传下载
curl --user 账户名:密码 -T 文件名 http://localhost:1234/Udemy/
curl --user luoxue:Luoxue123 http://127.0.0.1:1234/webadv/ -T ipc-home-20230203-084644.mp4

# 挂载
sudo mount -t davfs http://localhost:1234/ /mnt/webdav


windows:
    添加一个网络位置 或者 映射网络驱动器
    http://192.168.10.202:1234/
    luoxue Luoxue123

    https://docs.qnap.com/operating-system/qts/4.5.x/zh-cn/GUID-31D5B05F-F29E-4D61-9758-C8CF839C14FD.html