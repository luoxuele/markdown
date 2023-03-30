positional parameters
special parameters
read command
select command


agruments //命令行参数
parameters

# positional parameters
$0 $1 $9 ${10}

# special parameters
$# 
$0


# read
root@VM-8-13-debian:~# read
hello

root@VM-8-13-debian:~# echo $REPLY

root@VM-8-13-debian:~# read input1 input2
hello goodbye
echo $input1 ; echo $input2