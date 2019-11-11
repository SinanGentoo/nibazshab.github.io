# 404 NOT FOUND
---

# 二十四节气
春：  立春，雨水，惊蛰，春分，清明，谷雨  
夏：  立夏，小满，芒种，夏至，小暑，大暑  
秋：  立秋，处暑，白露，秋分，寒露，霜降  
冬：  立冬，小雪，大雪，冬至，小寒，大寒

# Huge The Book
> **bookstars**
  - **[沙雕图库](https://nibazshab.github.io/404/clock/)**
  - **[垃圾回收](https://github.com/NibaZShab/mirror/)**
  - **[毫无意义](httls://nibazshab.github.io/404/clock/index2.html)**

---
>  
  - **养老院**
    + **[奶牛传输](https://cowtransfer.com)**
    + **[聚合图床](https://www.superbed.cn)**
    + **[石墨文档](https://shimo.im)**
    + **[ariang](http://aria2.net)**
  - **不可名状**
    + **[熊猫书签exhentai](https://expanda.org)**
    + **[恋爱游戏网](https://www.lianaiyx.com)**
    + **[gal资源站](https://www.nyagal.com)**
    + **[忧郁的弟弟](https://www.mmgal.com)**
    + **[loadbt](https://www.loadbt.com/files)**
    + **[bt搜索聚合](https://hao.su/909)**
    + **[tracker](https://github.com/ngosang/trackerslist)**
    + **[tracker2](http://www.tkser.tk)**
  - **邮箱**
    + **[企鹅邮箱](https://w.mail.qq.com)**
    + **[临时邮箱](https://10minutemail.net/m/?lang=zh-cn)**
  - **没什么用**
    + **[网页傻瓜式生成](http://sc.ilysc.cn)**
    + **[腾讯微Q关闭推送广告](https://privacy.qq.com/yszc-m.htm)**
    + **[web ua检测](http://service.spiritsoft.cn/ua.html)**
    + **[pixiv以图搜图](http://saucenao.com)**
    + **[81亿像素银河全景图](http://www.eso.org/public/images/eso1242a/zoomable)**
    + **[在线win10电脑](https://demo.glyptodon.com)**
    + **[网盘资源搬运50g/月](https://www.multcloud.com)**
    + **[免费域名](http://www.freenom.com)**
    + **[tg频道搜索](http://www.sssoou.com)**
    + **[rsshub](https://docs.rsshub.app)**
    + **[植物大战僵尸下载站](http://pvz4.lonelystar.org/download.htm)**
    + **[linux命令查询](https://ipcmen.com)**
    + **(虚拟主机)[https://app.infinityfree.net]**
    + **(三丰云)[https://www.sanfengyun.com]**

# Lot Of Any

## terminal
```sh
# 判断存在并执行指令
if test -e abc
then
	echo "文件存在"
else
	echo "文件不存在"
fi
```
```sh
# 创建一个交互自命名的文件
read -p "请输入你要的创建的文件名" abc
touch $abc
```
```sh
$(date +"参数")
%Y    #年分
%m    #月分
%d    #日期
%W    #第几周
%a    #天气
%H    #时
%M    #分
%S    #秒
```
```py
# 图片转base64
import base64
def pic2txt(picture_name):
    with open ("%s" % picture_name, 'rb') as f:
        b64str = base64.b64encode(f.read())
    with open('%s.txt' % picture_name.split(".")[0], 'w+') as f:
        f.write(str(b64str))
        print("转化完成！")
picture_name = input("输入图片名称:")
pic2txt(picture_name)
```
```sh
# 安卓打开链接
am start -a android.intent.action.VIEW -d http://abc.com
```
```bash
# 删除abc和cba之外
shopt -s extglob
rm -rf !(abc|bca)
```
```bash
# for循环100次
i=1
for((; i<=100; i++)){
echo "" >> $i
}
```
```sh
# 截屏
screencap /sdcard/abc.png
```
```sh
# 空白符号
ㅤㅤㅤ
```
```sh
# tar备份
tar -cvf /sdcard/abc.tar /        # 备份
tar -xvf /sdcard/abc.tar -C /     # 恢复
```
```sh
# 自身apk内资源路径
/android_asset/
```
```sh
# 挂载可读写
mount -o remount -rw /
```
```sh
# 锁定abc
chattr -R +i abc     # 加锁
chattr -R -i abc     # 解锁
```
```sh
# 合并a和b为c
cat a b > c
```
```sh
# linux黑洞
/dev/null
```
```sh
# 生成1024g空文件abc
dd if=/dev/zero of=abc bs=1G count=0 seek=1024
```
```sh
# 清空abc但不删除
: > abc
```
```sh
# 查找abc并删除
find / -name abc |xargs rm -rf
```

## vim
```sh
# 删除空行
:g/^$/d

# 删除空行以及只有空格的行
:g/^\s*$/d

# 删除以 # 或 空格# 或 tab# 开头的行
:g/^\s*#/d
```
```sh
# 十六进制模式
:%!xxd        # 开启
:%!xxd -r     # 关闭
```
```sh
# 把每行的abc替换成cba
:1,$s/abc/cba/g
```
```sh
# 删除包含abc的行
:g/abc/d

# 删除不包含abc的行
:v/abc/d
```
```sh
# 每行行首添加abc
:%s/^/abc/

# 每行行尾添加abc
:%s/$/abc/
```
```sh
# 自动折行
:set nowrap     # 开启
:set wrap       # 关闭
```
```sh
# 显示行号
:set nu
```
```sh
# 删除光标所在行
dd
```

# anime
> 埃罗芒阿老师
> alice or alice
> charlotte
> 擅长捉弄的高木同学
> 干物妹，小埋
> gj部
> 工作细胞
> 狐妖小红娘
> 辉夜大小姐想让我告白
> 青春猪头少年不会梦到兔女郎学姐
> 珈百璃的堕落
> jojo的奇妙冒险
> 邻家索菲
> 龙王的工作
> 猫咪日常
> 请问你今天要来点兔子吗
> 平凡职业造就世界最强
> 齐木楠雄的灾难
> 轻音少女
> 天使降临到我身边
> 全职高手
> 我的妹妹不可能这么可爱
> 贤惠幼妻狐小仙
> 小林家的龙女仆
> 游戏人生
> 在下坂本，有何贵干
> 从零开始的异世界生活
> 我不是说过能力要平均值的吗
> 碧蓝航线
> 关于我转生成史莱姆这件事
> 我的脑内选项正在全力妨碍学园恋爱喜剧

# read
下面的是一个非常棒的电纸书阅读器的界面的颜色配置。

| 背景 | 内容 |
| :---: | :---: |
| #fff4e9de | #ff321309 |
| (244,233,222) | (50,19,9) |

# music
![](/404/markdown/picture/03.png)

---
# 完