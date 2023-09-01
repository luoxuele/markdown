# 创建新的service
sudo systemctl edit --force --full  aria2.service

systemctl cat aria2
// /etc/systemd/system/aria2.service

sudo systemctl enable aria2 --now
// Created symlink /etc/systemd/system/default.target.wants/aria2.service → /etc/systemd/system/aria2.service.

