#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt update && apt install mariadb-client -y

service mysql start

mysql --user=kelompokit17 --password=passwordit17 --host=10.72.3.3 --port=3306
