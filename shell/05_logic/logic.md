Chaining commands with list operators
Test commands
If statements
if statements with list operators to combine conditions
Case statements

list operators:
; semicolon
&   ampersand
&& 
||  vertical line,pipe

echo 123 ; pwd
echo 123 & echo 456

# 第一命令成功执行，才执行第二条命令 and
ls && pwd
ls xxxxxx && pwd

# 第一条命令失败，才会执行第二条命令 or
ls || pwd
ls xxx || pwd

commandA && commandB || commandC
A 成功 就执行B
A 失败 就是行C




# test command
test 2 -eq 2 ; echo $?
[ 2 -eq 2 ] ; echo $?

[ 1 -eq 2 ] ; echo $?
[ 1 -ne 2 ] ; echo $?


[[ $a = $b ]] ; echo $?
[[ $a != $b ]] ; echo $?
[[ -z $c ]] ; echo $?

c=anything
[[ -z $c ]] ; echo $?

<!-- file -->
[[ -e output.txt ]] ; echo $?


# if statements
if command
then
if


# case
case 
esac

[0-9]