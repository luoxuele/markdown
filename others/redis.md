# 1. 下载并解压
	1. wget http://download.redis.io/releases/redis-6.0.1.tar.gz
	2. tar xvf redis-6.0.1.tar.gz
		tar xvf redis-6.0.1.tar.gz  -C /usr/local/
	3. cd redis-6.0.1/
	
# 2. 安装
	1. make
	2. cd src && make install
	3. ./redis-server 测试是否安装成功




err:错误
ReplyError: MISCONF Redis is configured to save RDB snapshots, but it is currently not able to persist on disk. Commands that may modify the data set are disabled, because this instance is configured to report errors during writes if RDB snapshotting fails (stop-writes-on-bgsave-error option). Please check the Redis logs for details about the RDB error.


http://download.redis.io/releases/redis-6.0.3.tar.gz

# 3. 启动
	./redis-server ../redis.conf
	
# 4. 修改配置文件
	daemonize yes
	maxmemory 128MB 
	bind 0.0.0.0
	protected-mode no


检测端口是否在使用中
	netstat -anp | grep redis

# 5. 创建redis.server文件，让systemd方式启动和管理
	vim /lib/systemd/system/redis.service

	[Unit]
	Description=Redis
	After=network.target

	[Service]
	Type=forking
	PIDFile=/var/run/redis_6379.pid
	ExecStart=/usr/local/redis-6.0.3/src/redis-server /usr/local/redis-6.0.3/redis.conf
	ExecReload=/bin/kill -s HUP $MAINPID
	ExecStop=/bin/kill -s QUIT $MAINPID
	PrivateTmp=true

	[Install]
	WantedBy=multi-user.target
	
	重载系统服务
	systemctl daemon-reload
	
	grep -v "^#" ../redis.conf | grep -v ^$
	ln -s  /usr/local/redis-6.0.3/src/redis-cli /usr/local/bin/redis-cli

	
关闭selinux
	查看状态 sestatus
	暂时关闭 setenforce 0
	vi /etc/selinux/config
	
关闭防火墙
	systemctl stop firewalld.service
	systemctl disable firewalld.service
	
	# 1. 字符串命令
		set key value
		get key
		getrange key start end
		getset key value
		getbit key offset
		
		mget key1 [key2...]
		setbit key offset value
		
		setex key seconds value
		setnx key value
		setrange key offset value
	
		strlen key
		
		mset key value [key value ...]
		msetnx key value [key value]
		psetex key milliseconds value
		
		incr key
		decr key
		incrby key increment
		decrby key decrement
		
		incrbyfloat key increment
		append key value
		
	# 2. hash
		hset
		hget
		hmset
		hmget
		hgetall
		
		hdel
		del
		hincrby 
		hexists
		
		hlen
		hkeys
		hvals
	
	# 3. list
	Redis列表是简单的字符串列表，
	按照插入顺序排序。
	你可以添加一个元素到列表的头部（左边）
	或者尾部（右边）
	一个列表最多可以包含 232 - 1 个元素 
	(4294967295, 每个列表超过40亿个元素)。
	
	两端添加	lpush lpushx rpushx
	两端弹出	lpop 
	查看列表	lrange
	获取列表元素个数	llen
	扩展命令	lrem lset	linsert lpush
		rpoplpush 
	
	lrange list 0 -1
	
	# 4. set
		添加/删除 sadd srem
		获得集合中的元素	smembers scard
		集合的差，交，并运算	sdiff sinter sunion
		扩展命令	sismember srandmember
		
	
	# 5. sorted-set（zset）
		//用途 微博的热点话题， 游戏排名, 构建索引数据
		添加删除 zadd
		获取元素
		范围查询
		扩展命令
		zcard
		zscore
		zrem
		zrange
		zrevrange
		zremrangebyrank mysort 0 4 
		zremrangebyscore 
		zrangebyscore
		zincrby 
		zcount 
	
# 6. 通用操作
		keys *
		keys my*
		
		keys pattern
		del key [key ...]
		exists key [key ...]
		rename key newkey
		expire key seconds 过期时间
		ttl key
		type key
		
		select index
		move key db
		
		事务：
			multi exec discard

# 7. redis持久化
		RDB方式
		AOF方式
		
		RDB持久化是指在指定的时间间隔内将内存中的数据集快照写入磁盘，
		实际操作过程是fork一个子进程，先将数据集写入临时文件，
		写入成功后，再替换之前的文件，用二进制压缩存储。

		AOF持久化以日志的形式记录服务器所处理的
		每一个写、删除操作，查询操作不会记录，以文本的方式记录，
		可以打开文件看到详细的操作记录。
		
	flushall 清空数据库
	



 		