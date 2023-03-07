# https://www.tutorialspoint.com/unix/unix-quoting-mechanisms.htm

# shell special characters (also called metacharacters)
# * ? [ ] ' " \ $ ; & ( ) | ^ < > new-line space tab



# 1. single quote
ff '\\///[][]()()\'''
ff 'hello \n'

# 2. Double quote
ff "$PATH"
ff "'hello' \$ \` \' \" \\ `pwd`"


# 3. backslash \
# 立即跟在反斜杠后的character都失去特殊的意义
ff \ \$

# 4. back quote 
# 反引用 都被当成命令执行
ff `pwd`
ff `date`
ff "`date`"
