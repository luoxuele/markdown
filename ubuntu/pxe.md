https://www.molnar-peter.hu/en/ubuntu-jammy-netinstall-pxe.html
https://linuxhint.com/pxe_boot_ubuntu_server/
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/performing_an_advanced_rhel_8_installation/preparing-for-a-network-install_installing-rhel-as-an-experienced-user
https://www.linuxtechi.com/how-to-configure-dhcp-server-on-ubuntu/



# tftpd
sudo apt install tftpd-hpa -y
sudo systemctl status tftpd-hpa.service

sudo nano /etc/default/tftpd-hpa
cat /etc/default/tftpd-hpa
# /etc/default/tftpd-hpa

TFTP_USERNAME="tftp"
TFTP_DIRECTORY="/srv/tftp"
TFTP_ADDRESS=":69"
TFTP_OPTIONS="--create --secure"

sudo chown tftp:tftp /srv/tftp
sudo chown -R t



# apache2
sudo apt install apache2 -y
http://192.168.18.128/



# dhcp server
sudo nano /etc/default/isc-dhcp-server
INTERFACESv4="ens37"

sudo nano /etc/dhcp/dhcpd.conf



# dhcp server
sudo apt install isc-dhcp-server -y
sudo cat /etc/dhcp/dhcpd.conf

cat /etc/dhcp/dhcpd.conf  | grep -Ev "^$|^#"

allow booting;
allow bootp;
option arch code 93 = unsigned integer 16;
host ubuntu {
             hardware ethernet 00:0c:29:5f:94:33;
             if option arch = 00:07 {
                     filename "boot/bootx64.efi";
             } else {
                     filename "boot/pxelinux.0";
             }
             next-server 192.168.100.254;
             fixed-address 192.168.100.254;
     }


subnet 192.168.100.0 netmask 255.255.255.0 {
    range 192.168.100.51 192.168.100.200;
    option domain-name-servers 114.114.114.114 8.8.8.8;
    option routers 192.168.100.254;
}

# 网段
subnet 192.168.100.0 netmask 255.255.255.0 {
  range 192.168.100.51 192.168.100.199;
  option routers 192.168.100.254;
  option domain-name-servers 114.114.114.114, 8.8.8.8;
  lease-time 600;
}

sudo nano dhcpd.conf
sudo systemctl restart isc-dhcp-server
sudo systemctl status isc-dhcp-server



# 准备pxe文件
apt download pxelinux syslinux-common
sudo dpkg -X pxelinux_3%3a6.04~git20190206.bf6db5b4+dfsg1-3ubuntu1_all.deb  /srv/tftp/
sudo dpkg -X syslinux-common_3%3a6.04~git20190206.bf6db5b4+dfsg1-3ubuntu1_all.deb /srv/tftp/

sudo chown -R tftp:tftp  /srv/tftp/
ls -l /srv/tftp/

sudo ln -s boot/grub grub
sudo chown -R tftp:tftp /srv/tftp
ll /srv/tftp/

sudo chmod 777 -R /srv/tftp


menuentry "Install Ubuntu Jammy (22.04)" {
        set gfxpayload=keep
        linux   /boot/jammy/vmlinuz ip=dhcp cloud-config-url=/dev/null url=http://192.168.100.254/ubuntu-22.04.3-desktop-amd64.iso autoinstall ds="nocloud-net;s=http://192.168.100.254/jammy/"
        initrd  /boot/jammy/initrd
}


sudo apt install apahche2
