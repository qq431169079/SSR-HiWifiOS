#!/bin/sh
#
sleep 2
echo 'Building environment... 正在创建临时目录'
echo ''
mkdir /tmp/geewan
cd /tmp/geewan
echo 'Done! 成功创建临时目录!'
echo '
'
sleep 3
echo 'Downloading files... 正在下载插件'
echo '
'
curl -k -o ss.tar.gz  https://github.com/uwtom/SSR-HiWifiOS/raw/master/ssr-client-hiwifi.tar.gz 
echo 'Done! 下载完成'
echo '
'
sleep 3
echo 'Installing... 安装ing'
if test -e /usr/lib/lua/luci/view/admin_web/plugin/shadowsocks.htm;
then echo 'Error'&&rm -rf /tmp/geewan&&exit;
else
if test -e /etc/config/ss-redir;
then echo 'Error'&&rm -rf /tmp/geewan&&exit;
else tar xzvf ss.tar.gz -C / >>/dev/null;
fi
fi
echo 'Done! 插件安装成功!'
echo '
'
sleep 3
echo 'adding uninstall information... 准备删除临时文件...'
echo '
'
echo '
' >>/usr/lib/opkg/status
echo 'Package: geewan-ss' >>/usr/lib/opkg/status
echo 'Version: master-20130924-eb9d31869e1d7590cd8c2fb1e7d226ac6cf32fad-20141024' >>/usr/lib/opkg/status
echo 'Provides:' >>/usr/lib/opkg/status
echo 'Status: install hold installed' >>/usr/lib/opkg/status
echo 'Architecture: ralink' >>/usr/lib/opkg/status
echo 'Installed-Time: 1422509506' >>/usr/lib/opkg/status
echo 'Auto-Installed: yes' >>/usr/lib/opkg/status
echo '
' >>/usr/lib/opkg/status
echo 'cleanning temporary files... 正在清理临时文件'
echo '
'
if test -e /tmp/luci-indexcache;
then rm /tmp/luci-indexcache&&echo 'Done! 清理完成 '&&echo '
';
else echo 'luci-cache does not exist! 无法找到luci-cache,请确定是否是极路由环境'&&echo '
'
fi
rm -rf /tmp/geewan
sleep 3
echo 'the whole installation Success! 插件成功安装!'


