#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt update && apt install software-properties-common -y
add-apt-repository ppa:jczaplicki/xenial-php74-temp -y
apt update && apt install lynx unzip wget php7.4 php7.4-fpm nginx -y
wget -O '/var/www/modul' 'https://drive.google.com/uc?export=download&id=1ufulgiWyTbOXQcow11JkXG7safgLq1y-'
cd /var/www && unzip modul
cp -r /var/www/modul-3/* /var/www/html

cp -f ~/web /etc/nginx/sites-available/web
unlink /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/web /etc/nginx/sites-enabled

service php7.4-fpm start
service nginx restart
