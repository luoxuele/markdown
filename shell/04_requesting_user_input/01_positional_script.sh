#!/bin/bash

echo "My name is $1"
echo "My home directory is $2"
echo "my favorite colur is $3"
echo "The 10th argument is ${10}"
echo "The 11th argument is ${11}"

# sh 01_positional_script.sh tianchang ~ green

# 1=join
# bash: 1=join: command not found
# // 1不能做变量，保护位置参数