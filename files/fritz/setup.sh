#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt install bind9 -y

cp -r ~/it17 /etc/bind/it17
cp -f ~/named.conf.local /etc/bind

service bind9 restart
