## 1. 下载linux下的二进制包
    wget https://npm.taobao.org/mirrors/node/v14.0.0/node-v14.0.0-linux-x64.tar.xz


## 2. 解压文件
    tar xvf node-v14.0.0-linux-x64.tar.xz
    mv node-v14.0.0-linux-x64 ~/nodejs

## 3. 添加环境变量
    vi ~/.bashrc
    在文件末尾追加：PATH=$PATH:/home/luoxue/nodejs/bin
    source ~/.bashrc让配置文件生效

## 4. 查看是否安装成功
    npm --version
    npx --version
    node --version


## 5. 修改npm源
    1. 查看npm源 npm config get registry
    2. 修改npm源为淘宝源 npm config set registry https://registry.npm.taobao.org

## 6. 安装npr,用npr修改npm源
    npm install npr -g