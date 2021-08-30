设置用户名：git  config -- global  user.name  'github上注册的用户名';
设置用户邮箱：git config --global user.email '注册时候邮箱
校验是否成功 git config --list;
    git init ------校验是否成功，打开文件夹，是否出现.git
    touch 'index.html'  --------创建文件
    git add 'index.html' --------添加到缓存区

    git add ./*
    git commit -m "add"
    git status

    git remote add <name> <url>

# https
echo "# md" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/luoxuele/md.git
git push -u origin master
                
…or push an existing repository from the command line
git remote add origin https://github.com/luoxuele/md.git
git push -u origin master

# ssh
echo "# md" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:luoxuele/md.git
git push -u origin master
                
…or push an existing repository from the command line
git remote add origin git@github.com:luoxuele/md.git
git push -u origin master