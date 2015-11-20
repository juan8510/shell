#push
#####删除分支
	git push origin :branchname

#####查看配置
	git config --list
	git config --global --list

#####添加远程跟踪地址
	git remote add origin xxxxxxxxxxxxxxxxxxxxxx

#####设置日志格式
	git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
	git config --global alias.lg " log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"


#####谁动了我的代码
	git blame 文件名

#####windows下图形日志
	gitk

#####查看快照
	git diff	
	git diff --cached 
	git diff HEAD

#####git储存
	git stash 
	git stash pop
	git stash del


#####创建切换分支
	git branch xxx
	git checkout xxx
	git checkout -b xxx

#####合并分支
	git merge xxx
	git merge --no-ff -m "xxx" 分支名称

#####删除分支
	git branch -d dev

#####取消对文件的修改
	git checkout -- <file>.


#####取消本地所有未提交的修改
	git checkout .

#####取消已经暂存的文件
	git reset HEAD <file>.

#####撤销最后一次的提交
	git commit --amend
	git reset --hard commit_id

#####提交到线上
	git push origin test:master  #提交本地test分支作为远程的master分支

