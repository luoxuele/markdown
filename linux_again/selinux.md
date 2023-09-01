Red Hat Certified System Administrator (RHCSA) and Red Hat Certified
Engineer (RHCE)

# selinux
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/9/html/using_selinux/index

Security-Enhanced Linux (SELinux)
May <subject> do <action> to <object>?

sestatus
getenforce
setenforce -h
usage:  setenforce [ Enforcing | Permissive | 1 | 0 ]



cat /etc/selinux/config
cat /etc/selinux/config | grep -i ^selinux
cat /var/log/audit/audit.log 

Enforcing
Permissive


## SELinux contexts 
user, role, type, and security level.


semanage permissive -a httpd_t




##
dnf install policycoreutils-python-utils 
dnf install regexp

semanage -h
semanage port -h

semanage port -l | grep http

semanage port -l | grep ssh
semanage port -a -p tcp -t ssh_port_t 2222

semanage fcontext -l | grep httpd_sys_content_t
#


## bool
getsebool -a | grep ^http
setsebool -P httpd_enable_homedirs=1

semanage boolean -l | grep httpd
semanage  boolean  -m -1 httpd_enable_homedirs
semanage  boolean  -m -0 httpd_enable_homedirs
semanage boolean -l | grep httpd_enable




