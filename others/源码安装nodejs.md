# 1. 下载源码包并解压
	wget https://npm.taobao.org/mirrors/node/v14.1.0/node-v14.1.0.tar.gz
	tar xvf node-v14.1.0.tar.gz
	

# 2. 安装配置
	./configure
	make
	make install
	
	配置会检测有没有编译的开发环境：
	需要一下依赖：
		python
		gcc g++
		
		
		
# 3.二进制安装
	查看cpu信息：cat /proc/cpuinfo
	wget https://npm.taobao.org/mirrors/node/v14.1.0/node-v14.1.0-linux-armv7l.tar.xz
