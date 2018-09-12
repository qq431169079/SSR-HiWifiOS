极路由刷SSR插件 (适用于1S/2/3/4/B50/B70等机型)

方法一：

1.开启极路由开发者模式
安装Shadowsocks插件需要开启开发者权限。请参考官方的《开发者模式功能开放公告》，有十分详细的教程。

2.SSH登录极路由
ssh root@192.168.199.1 -p 1022 #使用root帐号连接路由，端口为1022，密码为后台登陆密码。

3.便捷脚本安装
cd /tmp && wget http://cdn.is26.com/file/hiwifi/shadow.sh && sh hiwifissr.sh && rm hiwifissr.sh
