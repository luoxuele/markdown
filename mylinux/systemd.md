tree /etc/systemd/system/
cat /lib/systemd/system/multi-user.target

/lib -> /usr/lib

man systemd.unit

systemctl cat code-server
cat /usr/lib/systemd/system/code-server.service

man systemd.service


wc -l ssh.service
cat -n ssh.service
systemctl cat sshd

ls -l /etc/systemd/*.conf
man systemd-system.conf


systemctl list-units
systemctl list-units --all
systemctl list-units -t service
systemctl list-units -t service --state=dead
systemctl --state=help



dnf install httpd
systemctl is-enabled httpd
systemctl is-active httpd
systemctl status httpd

systemctl start httpd
systemctl status httpd
ps aux | grep httpd
systemctl stop httpd

systemctl enable httpd

systemctl cat httpd

systemctl is-enabled httpd
systemctl is-active httpd
systemctl enable httpd --now
systemctl disable httpd --now


sudo apt install apache2 -y
systemctl cat apache2.service


sudo systemctl edit apache2.service
[Install]
Alias=httpd.service
sudo systemctl daemon-reload
sudo systemctl disable apache2.service
sudo systemctl enable apache2

systemctl status httpd
systemctl cat apache2
systemctl cat httpd


systemd-analyze security
systemd-analyze security apache2


grep -r "USER" /etc/apache2/*