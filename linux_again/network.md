NetworkManager
utility

dnf search network manager
dnf search NetworkManager

man networkmanager

/etc/NetworkManager

nmcli device
nmcli device status
nmcli connection show
nmcli connection add con-name eth0 type ethernet ifname eth0 ipv4.address 192.168.1.2/24 ipv4.gateway 192.168.1.254
nmcli connection add con-name eth0 type ethernet ifname eth0 ipv6.address 2001:db8:0:1::c000:207/64 ipv6.gateway 2001:db8:0:1::1 ipv4.address 192.0.1.3/24 ipv4.gateway 192.0.1.1
nmcli connection show eth0
nmcli connection modify eth0 connection.id datacenter

nmcli connection modify eth0 ifname ens160
nmcli connection show ens160
nmcli connection show eth0

nmcli connection up eth0
nmcli connection show
nmcli connection show  eth0
nmcli connection up ens160
nmcli connection del eth0
nmcli connection del datacenter

tree  /etc/NetworkManager/
cat /etc/resolv.conf

hostname
hostname luo.changgle.top
hostname -f
cat /etc/hostname

hostnamectl hostname luo.changgle.top
cat /etc/hostname

cat /etc/hosts
cat /etc/nsswitch.conf

# firewall
systemctl status firewalld
dnf provides firewalld

