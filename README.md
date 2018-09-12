极路由刷SS/SSR插件 (适用于1S/2/3/4/B50/B70等机型)
 
 
首先你得有一个Shadowsocks帐号，可以自己在服务器上搭建，也可以购买，这里不提供、不出售，也不回答从哪购买之类的问题。
 
 
1. 开启极路由开发者模式：
 * 安装Shadowsocks插件需要开启开发者权限。以下为申请方法：
 * a. 浏览器输入192.168.199.1 (注：'192.168.199.1'是极路由的默认管理IP，如果有修改请改为修改后的IP)，进入极路由管理页面，点击进入云平台。
 * b. 云平台选择 '路由器信息'。
 * c. 滚动到页面底部，高级设置处，点击+号展开高级设置。
 * d. 点击蓝色的申请按钮，进入申请页面。
 * e. 这里需要绑定手机，输入手机号获取短信验证码。
 * f. 验证成功后，进入微信验证页面，按照极路由官方提示，完成微信认证。
 * g. 验证成功之后，即开通开发者模式。
 

2. SSH登录极路由：Windows: 使用PuTTY或xShell登录 (个人比较偏好xShell)，具体使用方法网上很多，请自行搜索！
 
 
3. 便捷脚本安装：
 * 脚本1：cd /tmp && wget https://github.com/uwtom/SSR-HiWifiOS/raw/master/hiwifissr_1.sh && sh hiwifissr_1.sh && rm hiwifissr_1.sh
 * 脚本2：(转载自：https://pannixilin.com/archives/B70%E5%88%B7%E6%9C%BA.html)
   * 先打开/tmp临时文件夹：cd /tmp
   * 然后输入一键安装指令：echo "127.0.0.1 hiwifiss.ml" > /etc/hosts.d/aa;rm -f /tmp/hiwifissr_2.sh;/etc/init.d/dnsmasq restart;curl -k https://github.com/uwtom/SSR-HiWifiOS/raw/master/hiwifissr_2.sh -o hiwifissr_2.sh;chmod +x /tmp/hiwifissr_2.sh && sh /tmp/hiwifissr_2.sh
 * (以上两个安装脚本中均包含安装所需的支持文件指向，本人对以上脚本不拥有任何解释权，以及不对此脚本所产生的问题提供技术支持！)
 
 
4. 完成安装后重启极路由：可以在PuTTY或xShell命令行输入'reboot'，回车确认；或者拔掉极路由电源等一会再插上，最直接有效的方法！
