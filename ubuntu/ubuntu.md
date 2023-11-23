https://ubuntu.com/download/alternative-downloads
https://launchpad.net/ubuntu/+cdmirrors
https://mirrors.tuna.tsinghua.edu.cn/ubuntu-releases/22.04.3/


添加一台服务器到实验室集群步骤
1）、安装Ubuntu12.04系统（最好桌面版），将主机名命名为AiLab+编号，初始账户为cluster，密码cluster530；
2）、通过sudo passwd更改root密码（目前为止，所有服务器的root密码都是：yangqiang）
3）、登录cluster账户，通过id命令查看cluster账户的id，要确保id为1000， groupid为1000，且为cluster group，如果不是，退出cluster账户，登陆root账户，通过usermod –g –u等命令分别更改cluster账户的用户id和group id。
usermod –u newid  username
groupmod –g newid groupname
4）、在每台机上安装openssh-server: apt-get install openssh-server
5）、安装nfs：apt-get install nfs-client以及sudo apt-get install nfs-server
6）、安装MPI：sudo apt-get install mpich
7）、安装vim， apt-get install vim
8）、安装vnc，apt-get install vnc4server
9）、修改机器ip地址为静态IP：
address 192.168.1.50+机器编号
geteway 192.168.1.1
netmask 255.255.255.0 
10）在新机器root账户下运行以下命令：
ssh-keygen –t rsa (一路按enter)
cat ./.ssh/id_rsa.pub >> authorized_keys
11）、修改集群主机AiLab1的hosts文件：vim /etc/hosts
将所要添加的机器的ip和机器名加入集群所有机器的hosts文件
修改root账户下的Collect_Keys_from_Nodes.sh，将里面的seq后的数字改为新机器编号（注意，只包含新机器，不包含旧机器）；
而后运行该程序：bash ./ Collect_Keys_from_Nodes.sh将新机器的root密匙传递到主机；
12）、修改root账户下的Write_All_Keys_to_Files.sh，将新机器包含进去（注意既要包含旧机器又要包含新机器）；而后运行该文件；
13）、修改root账户下的Send_Keys_to_All_Nodes.sh，将新机器包含进去（注意既要包含旧机器又要包含新机器）；而后运行该文件；
14）、修改root账户下的Send_Host_to_All_Nodes.sh，将新机器包含进去（注意既要包含旧机器又要包含新机器）；而后运行该文件；通过以上，可以实现root账户下，所有机器无密码访问；
15）、将AiLab1主机的cluster文件夹映射到集群mount AiLab:/home/cluster /home/cluster
可以通过ssh AiLab{机器号}(整个是机器名)检验是否添加成功。
16）、修改root账户下的Mount_All_Nodes.sh，将新机器包含进去（注意既要包含旧机器又要包含新机器）；而后运行cp ./ Mount_All_Nodes.sh /etc/init.d。