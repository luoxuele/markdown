https://www.barenakedcoder.com/blog/2020/03/config-files-ini-xml-json-yaml-toml/
Config Files: INI, XML, JSON, YAML, TOML


https://access.redhat.com/documentation/zh-cn/red_hat_enterprise_linux/8/html/configuring_and_managing_networking/index
https://docs.openeuler.org/zh/docs/22.03_LTS/docs/Quickstart/quick-start.html

https://www.debian.org/doc/
https://docs.ubuntu.com/
https://help.ubuntu.com/

https://wiki.archlinux.org/title/Main_page_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)


https://www.golinuxcloud.com/dnf-command-in-linux/
https://www.computerhope.com/unix/apt.htm

https://www.cyberciti.biz/tips/linux-debian-package-management-cheat-sheet.html
https://www.cyberciti.biz/howto/question/linux/dpkg-cheat-sheet.php
http://ftp.debian.org/debian/

# debian
dpkg - package manager for Debian
apt

## apt
apt download htop

apt depends screen

## dpkg
dpkg --info htop_3.0.5-7_amd64.deb

dpkg -l | wc -l
dpkg -l htop
dpkg -l | grep -i sudo
dpkg -l | grep -i bash

dpkg -L screen
dpkg -L sudo
dpkg -L sudo | grep -i bin

dpkg -L htop
dpkg --contents htop_3.0.5-7_amd64.deb

dpkg -S /bin/netstat
dpkg -S /usr/bin/apt

dpkg -L code-server | grep service$