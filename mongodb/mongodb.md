# mongodb

## 1. 安装
    https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-debian/
    
    wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
    echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/5.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
    apt update
    apt install -y mongodb-org
    
    By default, a MongoDB instance stores:
    its data files in /var/lib/mongodb
    its log files in /var/log/mongodb
    
    /usr/bin/mongod --config /etc/mongod.conf
        {"t":{"$date":"2022-05-15T17:03:35.168+08:00"},"s":"E",  "c":"NETWORK",  "id":23024,   "ctx":"initandlisten","msg":"Failed to :{"path":"/tmp/mongodb-27017.sock","error":"Operation not permitted"}

    
## 2. 运行
    systemctl start mongod
    systemctl status mongod
    systemctl enable  mongod
    
    mongod --version
    
    mongosh
    mongosh 82.156.32.144:27017
    
## 配置文件
    /etc/mongod.conf

    

## 数据库操作
    show dbs
    
    show collections
    show tables
    
    use mytest
    db.createCollection("emp")
    
    保留数据库：admin,local,config
    
    
    

    
## 安全认证
    use admin
    db.createUser({user:"luoxue",pwd:"Luoxue123",roles:["root"]})
    db.createUser({user:"luoxue2",pwd:"Luoxue123",roles:["root"]})
     show users
     db.dropUser("luoxue2")
     db.auth("luoxue","Luoxue123")
     
    mongosh 82.156.32.144:27017 -u luoxue -p Luoxue123
    
## 数据库操作
    show databases|dbs
    use mytest2
    db    //显示当前库
    db.users.insertOne({name:"张三"})
    db.dropDatabase()    //删除当前库
    
## 集合操作
    show collections | tables
    
    //创建
    db.createCollection("users");
    db.createCollection("orders");
    db.emps.insertOne({name:"张三"})
    
    //删除
    db.emps.drop();
    
## 文档操作（CRUD ）
    create read,update,delete
    增删改查 or 增查改删
    
    insertOne(data, options)
    insertMany(data, options)
    
    find(filter,options)
    findOne(filter, options)
    
    updateOne(filter, data, options)
    updateMany(filter, data, options)
    replaceOne(filter, data, options)
    
    deleteOne(filter, options)
    deleteMany(filter, options)
    
    


    
    db.collection.insertOne()
    db.collection.insertMany()
    
    db.collection.find()
    
    db.collection.updateOne()
    db.collection.updateMany()
    db.collection.replaceOne()
    
    db.collection.deleteOne()
    db.collection.deleteMany()
    

    db.users.insertOne({name:"tianchang",age:28,status:"pending"})
    
db.users.insertMany([
{name:"张三",age:13},
{name:"李四",age:14}
])

for (let i=0;i<100;i++){
    db.users.insertOne({"_id":i,"name":"王五_"+i,"age":28})
}

for (let i=0;i<100;i++){
    db.users.insertOne({_id:i,name:"王五_"+i,age:28})
}

    db.users.find()
    db.users.find({name:"tianchang"})
    db.phones.find({City:"金华"})
    db.phones.find({City:{$in:["衢州","金华"]}})
    
### create


## replication
    
    
    
