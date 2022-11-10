# 下载并配置环境变量
    wget https://studygolang.com/dl/golang/go1.17.linux-amd64.tar.gz
    tar -xzvf go1.17.linux-amd64.tar.gz

    <!-- echo "export PATH=$PATH:$HOME/go/bin" >> $HOME/.bashrc -->
    echo 'export PATH=$PATH:$HOME/go/bin' >> $HOME/.bashrc
    export GOROOT=/root/go
    export GOPATH=/root/go
    source $HOME/.bashrc


    go env -w GOPROXY=https://goproxy.io,direct
    // ~/.config/go/env

# 配置vscode
    1. 扩展先装go
    2. 安装go tools插件
       1. ctrl+shift+p 搜索go install
       2. 编写.go文件，等弹出安装tools提示

# 编译
go build [-o output] [build flags] [packages]



go env -w GO111MODULE=on
go get github.com/google/gopacket

go mod init hello

// 网络流量抓包库 gopacket
// https://zhuanlan.zhihu.com/p/361737169
// https://gocn.vip/topics/8RMqWqHnR2
// https://pkg.go.dev/github.com/google/gopacket/pcap#hdr-Reading_Live_Packets