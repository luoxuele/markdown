# download
https://www.mongodb.com/try/download/community


https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-6.0.5-signed.msi
https://downloads.mongodb.com/compass/mongosh-1.8.0-win32-x64.zip




wget https://repo.mongodb.org/apt/debian/dists/bullseye/mongodb-org/6.0/main/binary-amd64/mongodb-org-server_6.0.6_amd64.deb
wget https://downloads.mongodb.com/compass/mongodb-mongosh_1.8.2_amd64.deb

dpkg -i mongodb-org-server_6.0.6_amd64.deb
dpkg -i mongodb-mongosh_1.8.2_amd64.deb

wget https://repo.mongodb.org/apt/debian/dists/buster/mongodb-org/4.4/main/binary-amd64/mongodb-org-server_4.4.21_amd64.deb
dpkg -i mongodb-org-server_4.4.21_amd64.deb

systemctl status mongod.service
systemctl enable mongod.service --now


# debian 11
https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-debian/

apt-get install gnupg
curl -fsSL https://pgp.mongodb.com/server-6.0.asc | \
    gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg \
   --dearmor
echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg] http://repo.mongodb.org/apt/debian bullseye/mongodb-org/6.0 main" |  tee /etc/apt/sources.list.d/mongodb-org-6.0.list
apt update

apt install mongodb-org-server mongodb-mongosh -y
apt purge mongodb-mongosh mongodb-org-server -y


# almalinux
https://repo.mongodb.org/yum/redhat/9/mongodb-org/6.0/x86_64/RPMS/mongodb-org-server-6.0.6-1.el9.x86_64.rpm
https://downloads.mongodb.com/compass/mongodb-mongosh-shared-openssl3-1.9.0.x86_64.rpm
https://repo.mongodb.org/yum/redhat/8/mongodb-org/4.4/x86_64/RPMS/mongodb-org-server-4.4.21-1.el8.x86_64.rpm


dnf list | grep -i bash
dnf install bash-completion -y
dnf install mongodb-org-server-6.0.6-1.el9.x86_64.rpm mongodb-mongosh-shared-openssl3-1.9.0.x86_64.rpm -y

dnf remove mongodb-org-server-6.0.6-1.el9.x86_64
dnf install mongodb-org-server-4.4.21-1.el8.x86_64.rpm -y

/var/lib/mongo (the data directory)
/var/log/mongodb (the log directory)

sudo systemctl enable  mongod --now
systemctl status mongod

