https://www.redhat.com/sysadmin/firewalld-linux-firewall

systemctl status firewalld.service

whereis firewall-cmd
dnf provides /usr/bin/firewall-cmd
dnf info firewalld


firewall-cmd --state
firewall-cmd --get-zones
firewall-cmd --get-default-zone

// Allow a port
firewall-cmd --add-port=80/tcp
firewall-cmd --add-port=80/tcp --permanent

// Reload firewalld
firewall-cmd --reload


// Add a service
firewall-cmd --get-services


// List ports and services
firewall-cmd --list-all
firewall-cmd --list-all-zones