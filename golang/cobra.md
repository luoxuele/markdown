# cobra安装
    go get -u github.com/spf13/cobra/cobra
    go install github.com/spf13/cobra/cobra@latest

    cobra -h //查看是否安装成功

    go get github.com/spf13/cobra
    go get github.com/spf13/viper

# cobra项目创建
    mkdir clid
    cd clid
    go mod init clid

    cobra init --pkg-name clid
    cobra init --pkg-name clid -a tianchang -l MIT

    cobra add version //添加子命令