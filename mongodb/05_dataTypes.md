https://www.mongodb.com/docs/mongodb-shell/reference/data-types/
https://www.mongodb.com/docs/manual/reference/bson-types/#std-label-bson-types

string
boolean
numbers (,)

Objectld
    12 bytes in length
    4-byte timestamp,单位是秒
    5-byte random , 这个随机数是固定的，随机是对于进程而言
    3-byte incrementing counter, initialized to a random value,递增计数器

new ObjectId

