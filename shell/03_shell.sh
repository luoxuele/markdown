# 使用变量
# ff ${PATH}
# ff $PATH

# Command substitution
# ff `date` # backtick character
# ff $(date)

# //注释
# ff # xxx

# wildcard
# * ? []
ff *
ff **/*
ff a*
ff *.txt

ff ??
ff *.??
ff a?

ff [ac]* # a或者c开头的
ff *[0-9]*
ff [^a-k]* //caret 插入符号表示反转范围
ff [a-zA-Z0-9]*
ls -lh [a]*

# 没有匹配到，就是本身
root@VM-8-13-debian:~# ff a?
0 ---- ff
1 ---- a? 



# Quoting
- — — |