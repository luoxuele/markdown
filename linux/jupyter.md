https://github.com/jupyter/notebook
pip --version
pip install notebook
https://jupyter-notebook.readthedocs.io/en/stable/public_server.html
jupyter notebook password



jupyter notebook --allow-root --ip=0.0.0.0 --port=8889 password

//生成配置文件
jupyter notebook --generate-config

//修改配置文件


C.NotebookApp.ip = '0.0.0.0'
C.NotebookApp.port = 8899
c.NotebookApp.password = 'argon2:$argon2id$v=19$m=10240,t=10,p=8$vohLiOyft8fDKV2yA7AOtQ$lS2dpG438tu8hObVYk9ilQ'
C.NotebookApp.allow_root = True
c.NotebookApp.open_browser = False   //启动自动打开浏览器

//用python3生成密码string
#  To generate, type in a python/IPython shell:
#  
#    from notebook.auth import passwd; passwd()


//创建systemd启动脚本，
cat /usr/lib/systemd/system/jupyter.service
[Unit]
Description=jupyter notebook
After=network.target

[Service]
Type=exec
ExecStart=/usr/local/bin/jupyter notebook
Restart=always
User=root

[Install]
WantedBy=default.target



# 快捷键
h   键盘快捷键
Esc 命令模式
enter   编辑模式

m   markdown
y   代码块
shift+enter 如果是markdown单元格，就会渲染

L 行数

Shift-Enter
: 运行单元格, 选择下面的单元格
Ctrl-Enter
: 运行选中的单元格
Alt-Enter
: 运行单元格并且在下面插入单元格


b 在下面增加单元格
dd 删除选中代码块
