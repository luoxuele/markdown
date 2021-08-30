# 下载安装
	官网
		https://www.mongodb.com/download-center/community
	https://repo.mongodb.org/yum/redhat/8/mongodb-org/4.2/x86_64/RPMS/mongodb-org-server-4.2.6-1.el8.x86_64.rpm
	https://repo.mongodb.org/yum/redhat/8/mongodb-org/4.2/x86_64/RPMS/mongodb-org-shell-4.2.6-1.el8.x86_64.rpm
	
	rpm -ivh mongodb-org-server-4.2.6-1.el8.x86_64.rpm
	如果提示需要python2就先安装python2
	
	systemctl status  mongod
	
	授权远程登录
	修改配置文件，vim /etc/mongod.conf
	bindIp: 0.0.0.0

# 使用

## 连接
     mongo --host 119.27.169.38:27017
     mongodb://119.27.169.38:27017/
     
## 查看
    show databases
    show dbs
    db 是一个变量，表示当前所处的数据库
    show collections/show tables
    
    use school
    db.student.save({name:"Scott",sex:"male",age:25,city:"成都"})
    db.student.find()
    
## 用户管理
    use admin
    
    
    
## rpm
    rpm -aq | grep "mongo"
    rpm -qa | grep -i mongo
    rpm -ql mongodb-org-server
    
	启动失败
    chown mongod:mongod /tmp/mongodb-27017.sock
	sudo chown mongod:mongod /tmp/mongodb-27017.sock
    lsof -i:27017
    
    
## grub
    db.users.insert({name:"田玲利",age:24,gender:"female"})
    db.users.find()
    db.users.drop()
    

## 1. 基本操作

## 2. 创建create
    db.<collcation>.insertOne(BSON)
    db.<collection>.insertMany([BSON,...])
    
## 3. 
    db.<collection>.find(条件[,查询的列])
    db.users.find({},{name:1})
    
    db.users.find({age:{$gt:24}})
    
## 4. U 
    db.<collection>.update()
    db.collection.updateOne(<filter>, <update>, <options>)
    db.collection.updateMany(<filter>, <update>, <options>)
    db.collection.replaceOne(<filter>, <update>, <options>)
    
    db.users.update({name:"张三"},{name:"张九"})
    
    修改器：
    db.users.update({name:"张三"},{$set:{name:"张九"}})
    db.users.update({name:"田玲利"},{$inc:{age:2}})
    
    db.test.remove({},true)
    db.test.remove({})
    
    