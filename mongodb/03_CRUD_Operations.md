# CRUD operations create, read, update, and delete documents.

# Create Operations
    db.collection.insertOne(<document>,<options>)
    db.collection.insertMany([ <document 1> , <document 2>, ... ], <options>)

# Read Operations
    db.collection.find(query, projection, options)
    db.collection.findOne(query, projection, options)

# Update Operations
    db.collection.updateOne(<filter>, <update>, <options>)
    db.collection.updateMany(<filter>, <update>, <options>)
    db.collection.replaceOne(<filter>, <update>, <options>)

# Delete Operations
    db.collection.deleteMany()
    db.collection.deleteOne()


# Parameters
## options
    writeConcern: <document>  //https://www.mongodb.com/docs/manual/reference/write-concern/
    ordered: boolean //默认是有序插入，insertMany()



# query
db.inventory.find( {} )
db.inventory.find( { status: "D" } )

db.inventory.find( { status: { $in: [ "A", "D" ] } } )
