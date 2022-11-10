ls | length
echo hello | save out.txt

let x = 1
echo $x
let x = 3
let x = $x + 1

ls | each -n { |it| $"Number ($it.index) is size ($it.item.size)" }


# Types of Data
    Integers
    Decimal
    Strings
    Booleans

    Records 键值对，就是字典？
    Lists
    Table


42 | describee 
3.1 | describe 
'my message' | describe
"my message" | describe
true | describe
date now | date format "%Y-%m-%d %H:%M:%S" | describe

echo {name: sam, rank: 10}
echo {name: sam, rank: 10} | describe

echo $"6 x 7 = (6 * 7)"
ff $"6 x 7 = (6 * 7)"

ls git/markdown/**

echo [sam fred george]
echo [sam fred george] |  describe 

echo [[name,age];[张三,14] [李四,23]]
echo [[name,age];[张三,14] [李四,23]] | describe
echo [{name: sam, rank: 10}, {name: bob, rank: 7}] | describe //也可以通过Records创建表格

# Glob patterns (wildcards)
    // *
    // **
    // ?


