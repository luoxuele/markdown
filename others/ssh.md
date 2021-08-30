# 生成密钥对
	 ssh-keygen.exe -t rsa -b 2048
	 -t加密算法
		-t dsa | ecdsa | ed25519 | rsa
	 -b 密钥对长度
	 
	密钥对的优先级大于密码验证的优先级

# 上传密钥对
	ssh-copy-id  root@119.27.169.38
	
	/.ssh/id_rsa.pub 
	/.ssh/authorized_keys
	这条命令实际上是把客户端的id_rsa.pub里面的公钥内容
	写入到了服务器的authorized_keys文件里面