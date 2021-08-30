# npm 命令入门

## 初始化项目
	npm init -y
	npm init -force	
	
## 包安装
	1. 生成阶段的包：--save，-S
	npm install jquery --save
	这条命令会在当前项目目录（package.json同名目录）
	下创建node_modules目录，并把下载的包放里面
	npm install jquery
	
	2. 开发阶段的包：--save-dev,-D
		npm install jquery --save-dev
		也是放在当前项目的node_modules目录下
		
	3. npm install --production 安装package.josn里面的成产包
	4. npm install 安装package.json里面的生产包和开发包
	5. npm install webpack -g/npm install webpack -global
		全局安装，下载到nodejs安装目录里面的node_modules里面的
		
## 查看安装的包	
    npm list
	
## 卸载包
    npm uninstall jquery
    npm uninstall webpack -g 卸载全局的安装包
    
## npm源管理(registry)
    npm install nrm -g
    nrm ls 查看源列表
    nrm use 源名称
    nrm test 测试源列表
    nrm add 源名称 address
	
	
    npm view uuid   

    注册npm账号
    npm logout login
    npm adduser
    npm publish --access=public
