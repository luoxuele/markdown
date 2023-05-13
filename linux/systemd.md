# man
    systemd.directives
    systemd.unit
    systemd.service

# systemctl
systemctl cat apache2

# keyword
systemd tutorial

# service
man systemd.service


# targets
systemctl list-units --type target
systemctl list-units --type target --all

systemctl get-default
systemctl set-default multi-user.target

systemctl -h

systemctl -h | grep isolate
systemctl isolate multi-user.target

# automatically restart crashed services with systemd
sudo apt install apache2
systemctl status apache2.service
sudo killall apache2

ls -la /etc/systemd/system/multi-user.target.wants/
apache2.service -> /lib/systemd/system/apache2.service
sudo systemctl edit apache2.service

sudo nano /lib/systemd/system/apache2.service
cat /lib/systemd/system/apache2.service
sudo systemctl daemon-reload

systemctl cat apache2.service



# hostname
pi@raspberrypi:~ $ hostname
raspberrypi
sudo hostname pi.changgle.top

hostnamectl
sudo hostnamectl set-hostname pi.changgle.top

# timezone
timedatectl
timedatectl list-timezones --all | grep Shanghai
timedatectl set-timezone  Asia/Shanghai
timedatectl set-timezone America/New_York


# service
systemctl cat apache2
systemctl cat sshd
systemctl cat dbus

systemctl list-dependencies apache2



# [Install]
WantedBy
    multi-user.target
    graphical.target


# controlling systemd Services
systemctl is-enabled sshd
systemctl is-enabled ssh
systemctl is-active sshd
systemctl status ssh

ps aux | grep sshd

start
stop
restart
reload

enable  --now
disable --now
is-enabled

kill
mask



// [Service]
ExecStart
ExecStop
ExecReload





systemd-analyze security
systemd-analyze security  apache2

[Service]
ProtectHome=yes
ProtectSystem=strict

[Install]
Alias=httpd.service

sudo systemctl edit apache2     //(partial edit)
sudo systemctl edit --full apache2  //(full edit)
sudo systemctl daemon-reload
sudo systemctl restart apache2



# create service
sudo systemctl edit --force --full timestamp.service

[Unit]
Description=Service Creation Demo
Wants=network.target
After=syslog.target network-online.target

[Service]
ExecStart=/home/pi/.bin/timestamp.sh
Restart=on-failure
RestartSec=20
KillMode=process

[Install]
WantedBy=multi-user.target


sudo systemctl start timestamp.service
sudo systemctl status timestamp.service
journalctl -xe