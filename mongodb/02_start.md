# references
    https://www.mongodb.com/docs/
    https://www.mongodb.com/docs/manual/    
    https://www.mongodb.com/docs/mongodb-shell/


# connect
    mongosh -h //查看帮助

    mongosh //默认连接到localhost with default port 27017
    mongosh "mongodb://localhost:27017"
    mongosh --host 127.0.0.1 --port 27017

    mongosh --host 82.156.32.144 --port 27017
    mongosh "mongodb://82.156.32.144:27017"


# switch databases
    db  //显示正在使用的数据库
    show dbs    //显示所有数据库
    use mytest  //使用或创建数据库

# create a collection
    db.myCollection.insertOne({x:1});

    show collections //显示所有集合


# Terminate a Running Command
    Ctrl + C
    exit
    .exit
    quit



# xxx
show dbs;
use flights

curly braces
underscore
duplicate key
schema


db.flightData.insertOne(
    {
    "departureAirport": "MUC",
    "arrivalAirport": "SFO",
    "aircraft": "Airbus A380",
    "distance": 12000,
    "intercontinental": true
  }
)

db.flightData.find()
db.flightData.find().pretty()


