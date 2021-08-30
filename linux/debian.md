# 允许root用户ssh登录
    vi /etc/ssh/sshd_config
    PermitRootLogin yes


# 查看系统版本
    lsb_release -a


# 修改国内源
    Debian 的软件源配置文件是 /etc/apt/sources.list
    sudo apt install apt-transport-https ca-certificates

    # 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
    deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye main contrib non-free
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye main contrib non-free
    deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-updates main contrib non-free
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-updates main contrib non-free

    deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-backports main contrib non-free
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-backports main contrib non-free

    deb https://mirrors.tuna.tsinghua.edu.cn/debian-security bullseye-security main contrib non-free
    # deb-src https://mirrors.tuna.tsinghua.edu.cn/debian-security bullseye-security main contrib non-free

# base
    git
    tree
    psmisc(pstree)
    screen
    curl
