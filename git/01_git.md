git help config
git config user.name
git config user.email

git config --global user.name "luoxuele"
git config --global user.email "tianchang1994@gmail.com"

git config init.Defaultbranch
git config --global init.Defaultbranch main

watch -n 1 "ls -a"

git init
git status

git clone
git clone https://github.com/luoxuele/ddns.git
git clone https://github.com/luoxuele/my_ddns.git

# day02

working directory
staging area
repository

add
commit
push
pull
status
log
diff

git add file_one.txt
.git/objects 
git commit -m "added first file"

git add .
git commit -m "added two files"

git log

git remote -v

git remote add name https://url.git
git remote add origin https://url.git

git remote rename <old> <new>
git remote remove <name>


git push -u origin main/master

git branch -M main

git push -u origin main
git remote remove origin
git remote add origin https://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@github.com/luoxuele/ddns.git

//现在github上创建文件
git fetch
git checkout origin/main
git switch main
git pull



提示：不建议在没有为偏离分支指定合并策略时执行 pull 操作。 您可以在执行下一次
提示：pull 操作之前执行下面一条命令来抑制本消息：
提示：
提示：  git config pull.rebase false  # 合并（缺省策略）
提示：  git config pull.rebase true   # 变基
提示：  git config pull.ff only       # 仅快进
提示：
提示：您可以将 "git config" 替换为 "git config --global" 以便为所有仓库设置
提示：缺省的配置项。您也可以在每次执行 pull 命令时添加 --rebase、--no-rebase，
提示：或者 --ff-only 参数覆盖缺省设置。


## branches
    branch
    switch
    checkout
    diff

git branch new_branch
git switch new_branch

git branch -m please_delete
git branch -D please_delete


# git原理
git cat-file -t c7dc
git cat-file -p c7dc
git cat-file -p ce01

//comiit 多出两个文件 commit,tree
git cat-file -t 0057`   //commit
git cat-file -t d91f    //tree


blob
commit
tree

commit 存的是tree，author,committer,parent //parent是上一个commit的指针
tree 目录的快照

cat .git/HEAD
cat .git/refs/heads/main

HEAD，branch,tag 实际上是指向commit的指针，存的是对应commit的sha1值

git branch new_branch
cat .git/refs/heads/new_branch
新创建的branch和main指向的是同一个commit

//附注标签
git tag -a 0.0.1 -m "v0.01 beta"
cat .git/refs/tags/0.0.1
git cat-file -t b6c9
git cat-file -p b6c9

git show 0.0.1

//轻量标签
git tag 0.0.2
git show 0.0.2


cat .git/refs/tags/0.0.1    //b6c9ef3555001f9e3cea5bea533e7e9466bffe5b
cat .git/refs/tags/0.0.2    //008cdbc474d40e95748eee2bcd292052194ccf26
git cat-file -t b6c9    //tag
git cat-file -t 008c    //commit
//轻量标签直接指向当前的commit
//附注标签 会创建一个tag对象，tag对象里面有一个object指针指向commit

git tag -d 0.0.1
git tag -d 0.0.2






# github

## PAT
Personal Access Tokens (PAT)
settings -> developer settings
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
git clone https://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@github.com/luoxuele/my_ddns.git


git remote -v 
origin  https://github.com/luoxuele/network_lab.git (push)

cat .git\config
git remote set-url --push origin https://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@github.com/luoxuele/network_lab.git
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

## ssh
ssh-keygen -t rsa -b 4096 -C "tianchang1994@gmail.com"

Your identification has been saved in C:\Users\admin/.ssh/id_rsa.
Your public key has been saved in C:\Users\admin/.ssh/id_rsa.pub.

cat .ssh\id_rsa.pub 
### 把公钥public key 填入到github
settings -> SSH and GPG keys -> New SSH key

//测试
ssh -T git@github.com


# pat
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
Expires on Wed, Apr 10 2024.

git remote set-url --push origin https://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@github.com/luoxuele/network_lab.git

git remote set-url origin https://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@github.com/luoxuele/network_lab.git



git remote set-url  origin https://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@github.com/luoxuele/network_lab.git

git remote set-url origin https://github.com/luoxuele/network_lab.git
git remote -v

git clone https://github.com/luoxuele/network_lab.git

https
git push 用用户名和token登录，密码就是token
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
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


//保存密码
git config --global credential.helper store

//密码保存的位置
 cat ~/.git-credentials
https://luoxuele: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@github.com


//配置文件
git config -e
git config -e --local
git config -e --global
git config -e --system

local 在 .git/config
global 在   ~/.gitconfig
system 在  /etc/gitconfig

git remote set-url --push origin https://luoxuele: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@github.com/luoxuele/network_lab
git remote set-url --push origin https://github.com/luoxuele/network_lab



git clone https://github.com/luoxuele/network_lab
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



https://luoxuele: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@github.com/luoxuele/network_lab.git

git remote set-url --push origin https://luoxuele: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@github.com/luoxuele/network_lab.git


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

Make sure to copy your personal access token now as you will not be able to see this again.
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
Expires on Sat, Oct 5 2024.

git remote set-url --push origin https://luoxuele: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@github.com/luoxuele/network_lab.git