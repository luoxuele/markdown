
# sshd
nano /etc/ssh/sshd_config
PermitRootLogin yes

systemctl enable sshd --now
systemctl reload sshd


# network
systemctl status systemd-networkd.service

nano /etc/systemd/network/20-ethernet.network
[Match]
Name=ens33

[Network]
Address=192.168.1.133/24
Gateway=192.168.1.1
DNS=8.8.8.8

systemctl reload systemd-networkd.service

# pacman
pacman -Syy
pacman -Syu
pacman -S networkmanager

## pacman help
pacman -S -h
https://www.linuxshelltips.com/archlinux-pacman-cheatsheet/