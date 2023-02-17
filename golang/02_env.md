//export GOROOT=/root/go
export GOROOT=/usr/lib/go-1.19
export PATH=$PATH:$GOROOT/bin

//export GOPATH=/home/luoxue/golib
export GOPATH=/root/go
export PATH=$PATH:$GOPATH/bin

// export GOPROXY=https://goproxy.io,direct
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.io,direct


GOROOT  go sdk目录，或者说是安装目录
GOPATH  GOPATH, also called the workspace directory。GOPATH defaults to a subdirectory named “go” in the user’s home directory
    On Windows: C:\Users\%USERPROFILE%\go
    On Linux: $HOME/go
    go env GOPATH //查看
    go get 下载的东西放在这个目录中

    go get github.com/nsf/gocode
    go install github.com/nsf/gocode@latest
    go install github.com/iawia002/lux@latest
    go install golang.org/x/tools/cmd/goimports@latest



# go tools
go install github.com/uudashr/gopkgs/v2/cmd/gopkgs@latest
go install github.com/ramya-rao-a/go-outline@latest
go install github.com/cweill/gotests/gotests@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/haya14busa/goplay/cmd/goplay@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/go-delve/delve/cmd/dlv@master
go install honnef.co/go/tools/cmd/staticcheck@latest
go install golang.org/x/tools/gopls@latest