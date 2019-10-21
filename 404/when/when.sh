#!/bin/bash
# Copyright (c) 2019 NibaZShab
# https://github.com/NibaZShab/NibaZShab.github.io
# https://nibazshab.github.io
# sh -c "$(curl -fsSL https://nibazshab.github.io/404/when/install.sh)"
clear
colorlogo="\033[31m"
colorhint="\033[36;43;1m"
colorend="\033[0m"
function logo(){
echo -e "$colorlogo
\n\n\n\n\n\n
                +
		+
		+
   +   +   +    +++++++    +++++++    +++++++
   +   +   +    +     +    +     +    +     +
   +   +   +    +     +    +++++++    +     +
   +   +   +    +     +    +          +     +
   +++++++++    +     +    +++++++    +     +
 $colorend"
}
function home(){
cd $HOME
echo -e "
\n
01)  好van的东西
02)  修复底部小键盘
03)  切换清华源
04)  使用atilo安装linux发行版
05)  安装hexo博客(作者的库)
06)  切换termux问候语
07)  安装命令行版百度云
08)  安装aria2下载工具
09)  切换为zsh终端
10)  配置python或java环境
11)  网址转二维码
00)  退出
---------------------------------------------
"
read -p "[when]# 你选择的序号是：" jia
case $jia in
01)
	clear
	logo
	sleep 1s
	game
	;;
02)
	sleep 0.5s
	if test -e $HOME/.termux
	then
		:
	else
		mkdir -p $HOME/.termux
	fi
	echo -e "extra-keys = [['$','>','-','\"','.','/','*'],['ESC','(','HOME','UP','END',')','PGUP'],['CTRL','[','LEFT','DOWN','RIGHT',']','PGDN']]" > $HOME/.termux/termux.properties
	echo -e "$colorhint 进度 [100%] $colorend \n $colorhint 请重启 termux $colorend"
	home
	;;
03)
	sleep 0.5s
	sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux stable main@' $PREFIX/etc/apt/sources.list
	echo -e "$colorhint 如果卡进度条，则退出重开termux，并运行 dpkg --configure -a 修复 $colorend"
	sleep 3s
	apt update && apt upgrade
	echo -e "$colorhint 进度 [100%] $colorend \n $colorhint 请重启 termux $colorend"
	home
	;;
04)
	sleep 0.5s
	echo -e "deb [trusted=yes] https://yadominjinta.github.io/files/ termux    extras" >> $PREFIX/etc/apt/sources.list
	pkg in atilo-cn
	echo -e "$colorhint 进度 [100%] $colorend"
	home
	;;
05)
	sleep 0.5s
	pkg in -y unzip
	pkg in -y git
	pkg in -y nodejs-lts
	pkg in -y openssh
	pkg in -y wget
	rm -rf $HOME/博客
	mkdir -p $HOME/博客	
	wget -O $HOME/博客/02.zip https://github.com/NibaZShab/NibaZShab.github.io/releases/download/02/02.zip
	cd $HOME/博客
	unzip $HOME/博客/02.zip
	rm -rf $HOME/博客/02.zip
	npm install -g hexo-cli
	npm install --save hexo
	mkdir -p $HOME/博客/404
	cd $HOME/博客/404
	hexo init
	rm -rf $HOME/博客/404/_config.yml
	mv -f $HOME/博客/_config.yml $HOME/博客/404
	mv -f $HOME/博客/up.sh $HOME/博客/404
	chmod 777 $HOME/博客/404/up.sh
	mv -f $HOME/博客/inside $HOME/博客/404/themes
	cd $HOME/博客/404
	git config --global user.name "NibaZShab"
	git config --global user.email "nibazshab@gmail.com"
	git init
	git remote add origin git@github.com:NibaZShab/NibaZShab.github.io.git
	echo -e "\n $colorhint 接下来请一路回车即可 $colorend"
	sleep 2s
	ssh-keygen -t rsa -C "nibazshab@gmail.com"
	cd $HOME/博客
	git clone https://github.com/NibaZShab/NibaZShab.github.io.git
	if test -e /sdcard/$
	then
		:
	else
		mkdir -p /sdcard/$
	fi
	cd $HOME
	ln -s /sdcard/$ $HOME/404
	cd $HOME/博客/NibaZShab.github.io
	mv -f $HOME/博客/NibaZShab.github.io/404 $HOME/404/$
	rm -rf $HOME/博客/NibaZShab.github.io
	mkdir -p $HOME/博客/404/source/about
	mkdir -p $HOME/博客/404/source/links
	rm -rf $HOME/博客/404/source/_posts/*
	cp $HOME/404/$/markdown/page/* $HOME/博客/404/source/_posts
	cp $HOME/404/$/markdown/about.md $HOME/博客/404/source/about/index.md
	cp $HOME/404/$/markdown/links.md $HOME/博客/404/source/links/index.md
	cp $HOME/404/$/markdown/book.md $HOME/博客/404
	chmod 777 $HOME/博客/404/book.md
	npm install --save hexo-deployer-git
	echo -e "$colorhint 进度 [100%] $colorend \n $colorhint 读取ssh密钥请输入 cat $HOME/.ssh/id_rsa.pub $colorend \n $colorhint 检测ssh连接状况请输入 ssh -T git@github.com $colorend \n\n $colorhint 注: 此为作者个人的博客，部分文件和操作逻辑较为难以理解 $colorend \n $colorhint 建议前往 https://nibazshab.github.io/post/04 $colorend \n $colorhint 可按照小白教程搭建自己的博客 $colorend"
	home
	;;
06)
	sleep 0.5s
	echo -e "\n\n\n\n                   Welcome to Termux!\n\n           I'm NibaZShab,thanks for use \"when\"\n\n\n\n                      代码使人头冷\n                    专业护发，用飘柔\n\n ------------------------------------------------------\n             民生各有所乐兮，余独好修以为常\n             虽体解吾犹未变兮，岂余心之可惩\n ------------------------------------------------------\n\n                    Hello  my  World\n\n\n" > $PREFIX/etc/motd
	echo -e "$colorhint 进度 [100%] $colorend \n $colorhint 请重启 termux $colorend \n $colorhint 如显示出问题，请双指捏合屏幕调整终端大小 $colorend"
	home
	;;
07)
	sleep 0.5s
	pkg in -y golang
	pkg in -y git
	cd $HOME
	git clone https://github.com/iikira/BaiduPCS-Go.git
	cd $HOME/BaiduPCS-Go
	echo -e "$colorhint 编译时间较长，请耐心等待 $colorend"
	sleep 2s
	GOOS=android GOARCH=arm64 go build -o bdy main.go
	mv -f bdy $HOME
	cd $HOME
	rm -rf $HOME/BaiduPCS-Go
	chmod -Rf 777 $HOME/go
	rm -rf $HOME/go
	echo -e "$colorhint 进度 [100%] $colorend \n $colorhint 输入 ./bdy 开始 $colorend"
	home
	;;
08)
	sleep 0.5s
	pkg in -y aria2
	pkg in -y wget
	cd /sdcard/Download
	rm -rf /sdcard/Download/aria2
	mkdir -p /sdcard/Download/aria2
	touch /sdcard/Download/aria2/aria2.session
	cd $HOME
	wget -O $PREFIX/etc/aria2.conf https://github.com/NibaZShab/NibaZShab.github.io/releases/download/09/09.conf
	rm -rf $HOME/aria2
	echo -e "echo \"rpc-key: 123456\"\nsleep 2s\nam start -a android.intent.action.VIEW -d http://aria2.net\naria2c --conf-path=$PREFIX/etc/aria2.conf" >> $HOME/aria2
	chmod 777 $HOME/aria2
	echo -e "$colorhint 进度 [100%] $colorend \n $colorhint 输入 ./aria2 开始 $colorend"
	home
	;;
09)
	sleep 0.5s
	pkg in -y wget
	rm -rf $HOME/install.sh
	wget https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh
	echo -e "$colorhint \n推荐配色值 → 19 19 $colorend \n"
	sleep 3s
	sh install.sh
	echo -e "$colorhint 进度 [100%] $colorend \n $colorhint 请重启 termux $colorend"
	rm -rf storage
	home
	;;
10)
	clear
	logo
	sleep 1s
	work
	;;
11)
	sleep 0.5s
	if test -e $PREFIX/bin/curl
	then
		:
	else
		pkg in -y curl
		echo -e "必要程序已添加"
	fi
	read -p "请输入要转换的网址：" wz
	echo -e "转换中......"
	sleep 0.7s
	echo -e "该网址的二维码如下："
	echo "$wz" |curl -F-=\<- qrenco.de
	sleep 4s
	home
	;;
00)
	clear
	cat $PREFIX/etc/motd
	exit
	;;
*)
	clear
	logo
	echo -e "\n\n\n[when]# 你正确输入了一个错误序号！"
	sleep 2s
	home
	;;
esac
}
function game(){
cd $HOME
echo -e "
\n
01)  小火车
02)  彩虹猫
03)  screenfetch
04)  neofetch
05)  奶牛说话
06)  打开王者荣耀
07)  刷流量
08)  欧皇测试游戏
09)  贪吃蛇
00)  返回
---------------------------------------------
"
read -p "[when]# 你选择的序号是：" vande
case $vande in
01)
	sleep 0.5s
	pkg in -y sl
	echo -e "$colorhint 进度[100%] $colorend \n $colorhint 输入 sl 开始 $colorend"
	game
	;;
02)
	sleep 0.5s
	pkg in -y nyancat
	echo -e "$colorhint 进度[100%] $colorend \n $colorhint 输入 nyancat 开始 $colorend"
	game
	;;
03)
	sleep 0.5s
	pkg in -y screenfetch
	echo -e "$colorhint 进度[100%] $colorend \n $colorhint 输入 screenfetch 开始 $colorend"
	game
	;;
04)
	sleep 0.5s
	pkg in -y neofetch
	echo -e "$colorhint 进度[100%] $colorend \n $colorhint 输入 neofetch 开始 $colorend"
	game
	;;
05)
	sleep 0.5s
	pkg in -y cowsay
	echo -e "$colorhint 进度[100%] $colorend \n $colorhint 输入 cowsay 要说的话 开始 $colorend"
	game
	;;
06)
	sleep 0.5s
	am start -n com.tencent.tmgp.sgame/com.tencent.tmgp.sgame.SGameActivity
	exit
	;;
07)
	sleep 0.5s
	if test -e $PREFIX/bin/wget
	then
		:
	else
		pkg in -y wget
	fi
	i=0
	while [ $((i++)) -le 999 ]
	do
	wget -O /dev/null http://dlied5.myapp.com/myapp/1104466820/sgame/2017_com.tencent.tmgp.sgame_h8218_1.43.1.15_fc9dc4.apk
	done
	;;
08)
	sleep 0.5s
	pkg in -y wget
	wget -O $HOME/van https://nibazshab.github.io/404/when/van.sh
	chmod 777 $HOME/van
	echo -e "$colorhint 进度 [100%] $colorend \n $colorhint 输入 ./van 开始 $colorend"
	game
	;;
09)
	sleep 0.5s
	pkg in -y nsnake
	echo -e "$colorhint 进度 [100%] $colorend \n $colorhint 输入 nsnake 开始 $colorend \n $colorhint 如无法运行，请双指捏合屏幕调整终端大小 $colorend"
	game
	;;
00)
	clear
	logo
	sleep 1s
	home
	;;
*)
	clear
	logo
	echo -e "\n\n\n[when]# 你正确输入了一个错误序号！"
	sleep 2s
	game
	;;
esac
}
function work(){
cd $HOME
echo -e "
\n
01)  python
02)  java
03)  go
04)  c/c++
00)  返回
---------------------------------------------
"
read -p "[when]# 你选择的序号是：" huanjing
case $huanjing in
01)
	sleep 0.5s
	pkg in -y python
	echo -e "$colorhint 进度 [100%] $colorend \n $colorhint 输入 python 进入python环境 $colorend"
	work
	;;
02)
	sleep 0.5s
	pkg in -y wget
	wget -O $HOME/jdk.deb https://github.com/NibaZShab/NibaZShab.github.io/releases/download/08/08.deb
	dpkg -i $HOME/jdk.deb
	rm -rf $HOME/jdk.deb
	echo -e "$colorhint 进度 [100%] $colorend"
	work
	;;
03)
	sleep 0.5s
	pkg in -y golang
	echo -e "$colorhint 进度 [100%] $colorend"
	work
	;;
04)
	sleep 0.5s
	pkg in -y clang
	echo -e "$colorhint 进度 [100%] $colorend"
	work
	;;
00)
	clear
	logo
	sleep 1s
	home
	;;
*)
	clear
	logo
	echo -e "\n\n\n[when]# 你正确输入了一个错误序号！"
	sleep 2s
	work
	;;
esac
}
logo
sleep 1s
home
exit
