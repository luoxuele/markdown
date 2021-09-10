# 1. 安装
     curl https://sh.rustup.rs -sSf | sh

# 配置国内源加速
    export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
    export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

# 配置rust crates国内源
    进入.cargo 当前目录，在当前目下创建 config 文件
    见下图，打开 config 文件，编写以下内容：
[source.crates-io]
registry = "https://github.com/rust-lang/crates.io-index"
replace-with = 'ustc'
[source.ustc]
registry = "git://mirrors.ustc.edu.cn/crates.io-index"



echo "export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static" >> .bashrc
echo "export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup" >> .bashrc



