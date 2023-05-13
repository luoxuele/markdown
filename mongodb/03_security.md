# https://www.mongodb.com/docs/manual/tutorial/configure-scram-client-authentication/

# Create the user administrator
use admin

db.createUser(
  {
    user: "luoxue",
    pwd: passwordPrompt(), // or cleartext password
    roles: [
      { role: "userAdminAnyDatabase", db: "admin" },
      { role: "readWriteAnyDatabase", db: "admin" }
    ]
  }
)

//用户密码
luoxue Luoxue123


# Re-start the MongoDB instance with access control
admin> db.adminCommand( {shutdown: 1} )
"C:\Program Files\MongoDB\Server\6.0\bin\mongod.exe" --auth --config "C:\Program Files\MongoDB\Server\6.0\bin\mongod.cfg"

//修改配置文件，然后重启服务
security:
    authorization: enabled

//windows
services.msc
"C:\Program Files\MongoDB\Server\6.0\bin\mongod.exe" --config "C:\Program Files\MongoDB\Server\6.0\bin\mongod.cfg" --service


# Connect and authenticate as the user administrator
mongosh --host 127.0.0.1 --port 27017
mongosh --host 127.0.0.1 --port 27017 --authenticationDatabase "admin" -u "luoxue" -p
mongosh --host 127.0.0.1 --port 27017 --authenticationDatabase "admin" -u "luoxue" -p "Luoxue123"

test> use admin
admin> db.auth("luoxue",passwordPrompt()) //Luoxue123


# network
## IP Binding
net:
  port: 27017
  bindIp: 0.0.0.0


net:
  port: 27017
  bindIpAll: true
  ipv6: true

net:
  port: 27017
  bindIp: '::'
  ipv6: true


## windows 查看套接字
 netstat -ano | findstr 27017

 mongosh --host 127.0.0.1 --port 27017 --authenticationDatabase "admin" -u "luoxue" -p "Luoxue123"
 mongosh "mongodb://[::1]:27017" --authenticationDatabase "admin" -u "luoxue" -p "Luoxue123"



 net:
  port: 27017
  # bindIp: 0.0.0.0
  bindIp: ::,0.0.0.0 
  # bindIpAll: true
  ipv6: true


  // windows 配置文件中，单独配置ipv6地址需要引号，同时绑定ipv6和ipv4反倒不要引号了


# 检验配置文件是否有误
# to validate your MongoDB configuration file
