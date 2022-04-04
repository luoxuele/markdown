# apt   Advanced Packaging Tool
## apt 帮助文档查看
    man apt
    apt -h
### command
    list - list packages based on package names
    search - search in package descriptions
    show - show package details
    install - install packages
    reinstall - reinstall packages
    remove - remove packages
    autoremove - Remove automatically all unused packages
    update - update list of available packages
    upgrade - upgrade the system by installing/upgrading packages
    full-upgrade - upgrade the system by removing/installing/upgrading packages
    edit-sources - edit the source information file
    satisfy - satisfy dependency strings

    purge - Remove packages and config files
    source - Download source archives
    download - Download the binary package into the current directory

    用法案例：
    apt list apache2*   //查找apache2开头的安装包
    apt list | wc -l    //计算安装包的总数
    apt install gcc-10
    apt upgrade    //升级所有可以升级的包
    tree /var/cache/apt/
    apt autoclean   //删除下载的文件
    apt download isc-dhcp-server    //下载dhcp-server包
    apt depends isc-dhcp-server     //查看依赖
    apt show isc-dhcp-server
    apt list --installed | wc -l    //已安装软件包数量




## dpkg




    用法案例：
    dpkg -L isc-dhcp-server



# words
    abbreviation    缩写词

# references
    https://www.debian.org/doc/manuals/debian-handbook/index.en.html
    https://www.debian.org/doc/manuals/debian-handbook/