wget www.newtao.vip/waf.tar
wget www.newtao.vip/wafconf.tar
tar xvf waf.tar
tar xvf wafconf.tar
cp /www/server/nginx/conf/nginx.conf /www/server/nginx/conf/nginx.conf.bak
sed -i 's/#include luawaf.conf;/include luawaf.conf;/g' /www/server/nginx/conf/nginx.conf
/usr/bin/cp -r ./waf/ /www/server/nginx/
/usr/bin/cp -r ./wafconf/ /www/server/panel/vhost/
/etc/init.d/nginx restart
