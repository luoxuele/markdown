# ssh
cat /etc/ssh/sshd_config | grep -v ^#  | sort -u
man sshd_config

## root access
PermitRootLogin no | yes | prohibit-password
PasswordAuthentication
PermitEmptyPasswords

## 
ssh-keygen --help
ssh-keygen
~/.ssh/id_rsa
~/.ssh/id_rsa.pub

./ssh/authorized_keys
    //This contains the
public keys that can be used to log in to this system for this user
./ssh/known_hosts
    //

man sshd 
/authorized_keys

ssh-copy-id localhost
//把本地的~/.ssh/id_rsa.pub 添加到authorized_keys文件中

ssh -i .\id_rsa root@192.168.199.130
//测试登陆

## ssh agent

