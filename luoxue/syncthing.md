# syncthing
    cp syncthing /usr/bin
    cp ./etc/linux-systemd/system/syncthing* /usr/lib/systemd/system/
    systemctl enable syncthing@$USER --now
