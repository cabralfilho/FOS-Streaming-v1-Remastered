#!/bin/bash

# FUNCTION: Ubuntu 14.04 Check
distro(){
if [ -f /etc/lsb-release ]; then
    . /etc/lsb-release
        if [ $DISTRIB_ID == Ubuntu ]; then
            if [ $DISTRIB_RELEASE != "14.04" ]; then
                error
            fi
        else
            error
        fi
fi
}

# FUNCTION: ERROR
error(){
    sleep 2
    echo -ne '\n'"--PROBLEM!--"
    echo -ne '\n'"Support: N/A" '\n'
exit
}


# FUNCTION: FOS-Streaming Exist
fosstreamingexist() {
    if [ -d "/home/fos-streaming" ]; then
      echo -ne '\n'"You have already installed fos streaming before?"
      echo "If you want remove fos-streaming"
      echo "killall -9 nginx php-fpm"
      echo  "userdel fosstreaming"
      echo "rm -r /home/fos-streaming"
      exit
    fi
}

# FUNCTION: Packages Install
packages_install(){
    apt-get update >/dev/null 2>&1
    apt-get install -y --force-yes git >/dev/null 2>&1
    apt-get install -y --force-yes php*-cli curl >/dev/null 2>&1
    apt-get install -y --force-yes libxml*-dev*>/dev/null 2>&1
    apt-get install -y --force-yes libbz*-dev*>/dev/null 2>&1
    apt-get install -y --force-yes libcurl*-openssl-dev *>/dev/null 2>&1
    apt-get install -y --force-yes libmcrypt-dev**>/dev/null 2>&1
    apt-get install -y --force-yes libmhash*>/dev/null 2>&1
    apt-get install -y --force-yes libmhash-dev**>/dev/null 2>&1
    apt-get install -y --force-yes libpcre3**>/dev/null 2>&1
    apt-get install -y --force-yes libpcre3-dev**>/dev/null 2>&1
    apt-get install -y --force-yes make*>/dev/null 2>&1
    apt-get install -y --force-yes build-essential*>/dev/null 2>&1
    apt-get install -y --force-yes libxslt1-dev* gi*>/dev/null 2>&1
    apt-get install -y --force-yes libssl-dev*>/dev/null 2>&1
    apt-get install -y --force-yes gi*>/dev/null 2>&1
    apt-get install -y --force-yes php**>/dev/null 2>&1
    apt-get install -y --force-yes unzi*>/dev/null 2>&1
    apt-get install -y --force-yes python-software-propertie*>/dev/null 2>&1
    apt-get install -y --force-yes libpopt*>/dev/null 2>&1
    apt-get install -y --force-yes libpq-dev*>/dev/null 2>&1
    apt-get install -y --force-yes libpq*>/dev/null 2>&1
    apt-get install -y --force-yes libpspell-dev*>/dev/null 2>&1
    apt-get install -y --force-yes libpthread-stubs*-de*>/dev/null 2>&1
    apt-get install -y --force-yes libpython*-stdli*>/dev/null 2>&1
    apt-get install -y --force-yes libqdbm*-de*>/dev/null 2>&1
    apt-get install -y --force-yes libqdbm1*>/dev/null 2>&1
    apt-get install -y --force-yes libquadmath*>/dev/null 2>&1
    apt-get install -y --force-yes librecode*-de*>/dev/null 2>&1
    apt-get install -y --force-yes librecode*>/dev/null 2>&1
    apt-get install -y --force-yes librtmp*-de*>/dev/null 2>&1
    apt-get install -y --force-yes librtmp*>/dev/null 2>&1
    apt-get install -y --force-yes libsasl*-de*>/dev/null 2>&1
    apt-get install -y --force-yes libsasl*-module*>/dev/null 2>&1
    apt-get install -y --force-yes libsctp*-de*>/dev/null 2>&1
    apt-get install -y --force-yes libsctp*>/dev/null 2>&1
    apt-get install -y --force-yes libsensors*>/dev/null 2>&1
    apt-get install -y --force-yes libsensors*-de*>/dev/null 2>&1
    apt-get install -y --force-yes libsm*-de*>/dev/null 2>&1
    apt-get install -y --force-yes libsm*>/dev/null 2>&1
    apt-get install -y --force-yes libsnmp*-bas*>/dev/null 2>&1
    apt-get install -y --force-yes libsnmp*-de*>/dev/null 2>&1
    apt-get install -y --force-yes libsnmp*-per*>/dev/null 2>&1
    apt-get install -y --force-yes libsnmp3*>/dev/null 2>&1
    apt-get install -y --force-yes libsqlite*-de*>/dev/null 2>&1
    apt-get install -y --force-yes libssh2-*>/dev/null 2>&1
    apt-get install -y --force-yes libssh2-1-dev*>/dev/null 2>&1
    apt-get install -y --force-yes libssl-dev*>/dev/null 2>&1
    apt-get install -y --force-yes libstdc++-4.8-dev*>/dev/null 2>&1
    apt-get install -y --force-yes libstdc++6-4.7-dev*>/dev/null 2>&1
    apt-get install -y --force-yes libsybdb*>/dev/null 2>&1
    apt-get install -y --force-yes libtasn*-3-de*>/dev/null 2>&1
    apt-get install -y --force-yes libtasn*-6-de*>/dev/null 2>&1
    apt-get install -y --force-yes libterm*-readkey-per*>/dev/null 2>&1
    apt-get install -y --force-yes libtidy*-0.99-*>/dev/null 2>&1
    apt-get install -y --force-yes libtidy*-de*>/dev/null 2>&1
    apt-get install -y --force-yes libtiff*>/dev/null 2>&1
    apt-get install -y --force-yes libtiff*-de*>/dev/null 2>&1
    apt-get install -y --force-yes libtiffxx*>/dev/null 2>&1
    apt-get install -y --force-yes libtimedate-perl*>/dev/null 2>&1
    apt-get install -y --force-yes libtinfo-dev*>/dev/null 2>&1
    apt-get install -y --force-yes libtool*>/dev/null 2>&1
    apt-get install -y --force-yes libtsan0*>/dev/null 2>&1
    apt-get install -y --force-yes libunistring*>/dev/null 2>&1
    apt-get install -y --force-yes libvpx-dev*>/dev/null 2>&1
    apt-get install -y --force-yes libvpx*>/dev/null 2>&1
    apt-get install -y --force-yes libwrap0-dev*>/dev/null 2>&1
    apt-get install -y --force-yes libx11-*>/dev/null 2>&1
    apt-get install -y --force-yes libx11-data*>/dev/null 2>&1
    apt-get install -y --force-yes libx11-dev*>/dev/null 2>&1
    apt-get install -y --force-yes libxau-de*>/dev/null 2>&1
    apt-get install -y --force-yes libxau*>/dev/null 2>&1
    apt-get install -y --force-yes libxcb*>/dev/null 2>&1
    apt-get install -y --force-yes libxcb1-de*>/dev/null 2>&1
    apt-get install -y --force-yes libxdmcp-de*>/dev/null 2>&1
    apt-get install -y --force-yes libxdmcp*>/dev/null 2>&1
    apt-get install -y --force-yes libxml*>/dev/null 2>&1
    apt-get install -y --force-yes libxml2-de*>/dev/null 2>&1
    apt-get install -y --force-yes libxmltok*>/dev/null 2>&1
    apt-get install -y --force-yes libxmltok1-de*>/dev/null 2>&1
    apt-get install -y --force-yes libxpm-de*>/dev/null 2>&1
    apt-get install -y --force-yes libxpm*>/dev/null 2>&1
    apt-get install -y --force-yes libxslt1-de*>/dev/null 2>&1
    apt-get install -y --force-yes libxslt1.*>/dev/null 2>&1
    apt-get install -y --force-yes libxt-de*>/dev/null 2>&1
    apt-get install -y --force-yes libxt*>/dev/null 2>&1
    apt-get install -y --force-yes linux-libc-de*>/dev/null 2>&1
    apt-get install -y --force-yes m*>/dev/null 2>&1
    apt-get install -y --force-yes mak*>/dev/null 2>&1
    apt-get install -y --force-yes man-d*>/dev/null 2>&1
    apt-get install -y --force-yes netcat-openbs*>/dev/null 2>&1
    apt-get install -y --force-yes odbcinst1debian*>/dev/null 2>&1
    apt-get install -y --force-yes openss*>/dev/null 2>&1
    apt-get install -y --force-yes patc*>/dev/null 2>&1
    apt-get install -y --force-yes pkg-confi*>/dev/null 2>&1
    apt-get install -y --force-yes po-debcon*>/dev/null 2>&1
    apt-get install -y --force-yes python*>/dev/null 2>&1
    apt-get install -y --force-yes python-minima*>/dev/null 2>&1
    apt-get install -y --force-yes python2.*>/dev/null 2>&1
    apt-get install -y --force-yes python2.7-minima*>/dev/null 2>&1
    apt-get install -y --force-yes re2*>/dev/null 2>&1
    apt-get install -y --force-yes unixodb*>/dev/null 2>&1
    apt-get install -y --force-yes unixodbc-de*>/dev/null 2>&1
    apt-get install -y --force-yes uuid-de*>/dev/null 2>&1
    apt-get install -y --force-yes x11-commo*>/dev/null 2>&1
    apt-get install -y --force-yes x11proto-core-de*>/dev/null 2>&1
    apt-get install -y --force-yes x11proto-input-de*>/dev/null 2>&1
    apt-get install -y --force-yes x11proto-kb-de*>/dev/null 2>&1
    apt-get install -y --force-yes xorg-sgml-doctool*>/dev/null 2>&1
    apt-get install -y --force-yes libjpeg*>/dev/null 2>&1
    apt-get install -y --force-yes xtrans-de*>/dev/null 2>&1
    apt-get install -y --force-yes zlib1g-de*>/dev/null 2>&1
    apt-get install -y --force-yes php5-fpm*>/dev/null 2>&1
    apt-get install -y --force-yes libgtk2.0-0 libgdk-pixbuf2.0-0 libfontconfig1 libxrender1 libx11-6 libglib2.0-0  libxft2 libfreetype6 libc6 zlib1g libpng12-0 libstdc++6-4.8-dbg-arm64-cross libgcc1*>/dev/null 2>&1
    }
    ln -s /usr/lib/x86_64-linux-gnu/libfreetype.so.6.11.1 /usr/lib/libfreetype.so.6
    fos_install(){
    /usr/sbin/useradd -s /sbin/nologin -U -d /home/fos-streaming -m fosstreamin*>/dev/null
    cd /home/fos-streamin*>/dev/null
    wget https://master.dl.sourceforge.net/project/iptv-md/ionix/fos-streaming_unpack_x84_64.tar.gz -O /home/fos-streaming/fos-streaming_unpack_x84_64.tar.gz*>/dev/null 2>&1
    tar -xzf /home/fos-streaming/fos-streaming_unpack_x84_64.tar.gz -C /home/fos-streaming/
    rm -rf /home/fos-streaming/fos/www/vendor /home/fos-streaming/fos/www/50x.htm*>/dev/null 2>&1
    cd /home/fos-streaming/fos/www*>/dev/null 2>&1
    git clone https://github.com/cabralfilho/FOS-Streaming-v1-Remastered.git*>/dev/null 2>&1
    cp -R /home/fos-streaming/fos/www/FOS-Streaming-v1/* /home/fos-streaming/fos/www/*>/dev/null 2>&1

    echo 'www-data ALL = (root) NOPASSWD: /usr/local/bin/ffmpeg' >> /etc/sudoers*>/dev/null 2>&1
    echo 'www-data ALL = (root) NOPASSWD: /usr/local/bin/ffprobe' >> /etc/sudoers*>/dev/null 2>&1
    echo '*/2 * * * * www-data /home/fos-streaming/fos/php/bin/php /home/fos-streaming/fos/www/cron.php' >> /etc/crontab*>/dev/null 2>&1

    sed --in-place '/exit 0/d' /etc/rc.loca*>/dev/null 2>&1
    echo 'sleep 10' >> /etc/rc.loca*>/dev/null 2>&1
    echo '/home/fos-streaming/fos/nginx/sbin/nginx_fos' >> /etc/rc.loca*>/dev/null 2>&1
    echo '/home/fos-streaming/fos/php/sbin/php-fpm' >> /etc/rc.loca*>/dev/null 2>&1
    echo 'exit 0' >> /etc/rc.loca*>/dev/null 2>&1

    /bin/mkdir /home/fos-streaming/fos/www/hl*>/dev/null 2>&1
    chmod -R 777 /home/fos-streaming/fos/www/hl*>/dev/null 2>&1
    /bin/mkdir /home/fos-streaming/fos/www/cache*>/dev/null 2>&1
    chmod -R 777 /home/fos-streaming/fos/www/cache*>/dev/null 2>&1
    chown www-data:www-data /home/fos-streaming/fos/nginx/conf*>/dev/null 2>&1

    /bin/cp improvement/nginx.conf /home/fos-streaming/fos/nginx/conf/nginx.conf
    /bin/cp improvement/php-fpm.conf /home/fos-streaming/fos/php/etc/php-fpm.conf
    /bin/cp improvement/www.conf /home/fos-streaming/fos/php/etc/pool.d/www.conf
    /bin/cp improvement/balance.conf /home/fos-streaming/fos/nginx/conf/balance.conf

}

startfos(){
    /home/fos-streaming/fos/php/sbin/php-fpm
    /home/fos-streaming/fos/nginx/sbin/nginx_fos
    sleep 3
    curl "http://127.0.0.1:7777/install_database_tables.php?install"
    curl "http://127.0.0.1:7777/install_database_tables.php?update"
    rm -r /home/fos-streaming/fos/www/install_database_tables.php
}

ffmpeg()
{
    wget https://github.com/nareix/ffmpeg-static-builds/releases/download/3.1.3/ffmpeg-release-64bit-static.tar.xz -O /home/fos-streaming/ffmpeg-release-64bit-static.tar.xz*>/dev/null 2>&1
    tar -xJf /home/fos-streaming/ffmpeg-release-64bit-static.tar.xz -C /tmp*>/dev/null 2>&1
    /bin/cp /tmp/ffmpeg*/ffmpeg  /usr/local/bin/ffmpeg
    /bin/cp /tmp/ffmpeg*/ffprobe /usr/local/bin/ffprobe
    chmod 755 /usr/local/bin/ffmpeg*>/dev/null 2>&1
    chmod 755 /usr/local/bin/ffprobe*>/dev/null 2>&1
    chown www-data:root /usr/local/nginx/html*>/dev/null 2>&1
}
foswebport-streamport()
{
    /bin/mkdir /home/fos-streaming/fos/www1/
    /bin/mkdir /home/fos-streaming/fos/www1/log/
    chown fosstreaming:fosstreaming /home/fos-streaming/fos/www1/log/
    /bin/cp -R /home/fos-streaming/fos/www/* /home/fos-streaming/fos/www1/
    /bin/rm /home/fos-streaming/fos/www1/*.*
    /bin/rm -rf /home/fos-streaming/fos/www1/hl
    /bin/ln -s /home/fos-streaming/fos/www/hl /home/fos-streaming/fos/www1/hl
    /bin/ln -s /home/fos-streaming/fos/www/config.php /home/fos-streaming/fos/www1/config.php
    /bin/ln -s /home/fos-streaming/fos/www/functions.php /home/fos-streaming/fos/www1/functions.php
    /bin/ln -s /home/fos-streaming/fos/www/stream.php /home/fos-streaming/fos/www1/stream.php
    /bin/ln -s /home/fos-streaming/fos/www/playlist.php /home/fos-streaming/fos/www1/playlist.php
 }   
info(){
 echo "********************************************************************************************;
    echo "FOS-Streaming installed.. \n";
    echo "streaming port   page: 'http://host:8000' \n";
    echo "visit management page: 'http://host:7777' \n";
    echo "Login: \n";
    echo "Username: admin \n";
    echo "Password: admin \n";
    echo "database details: \n";
    echo  "hostname: localhost, database_name: " $1 " , database_username: "  $2  " , database_password " $3
    echo "IMPORTANT: After you logged in, go to settings and check your ip-address. \n";
    echo "*****************************************************************************************;
}

database(){

echo ""
read -p "Choose your MySQL database name: " sqldatabase
read -p "Enter your MySQL username(usual 'root'): " sqluname
read -rep $'Enter your MySQL password (ENTER for none):' sqlpasswd
echo "mysql-server mysql-server/root_password password $sqlpasswd" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections
echo "phpmyadmin phpmyadmin/app-password-confirm password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/admin-pass password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/mysql/app-pass password $sqlpasswd" | debconf-set-selections
echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect none" | debconf-set-selections

apt-get install -y mysql-serve*>/dev/null 2>&1
apt-get install -y php5-mysql*>/dev/null 2>&1

mysql -uroot -p$sqlpasswd -e "CREATE DATABASE $sqldatabase"
mysql -uroot -p$sqlpasswd -e "grant all privileges on $sqldatabase.* to '$sqluname'@'localhost' identified by '$sqlpasswd'"


sed -i 's/xxx/'$sqldatabase'/g' /home/fos-streaming/fos/www/config.php
sed -i 's/zzz/'$sqlpasswd'/g' /home/fos-streaming/fos/www/config.php
sed -i 's/ttt/'$sqluname'/g' /home/fos-streaming/fos/www/config.php

}

echo "FOS-Streaming is installing, you need to wait till the installation gets finished"

fosstreamingexist
distro
packages_install
fos_install
database
ffmpeg
startfos
#test
foswebport-streamport
info
