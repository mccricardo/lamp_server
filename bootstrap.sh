#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

echo "Update repos"
apt-get update

echo "Install apache"
apt-get install -y apache2 apache2-mpm-worker

echo "Install MySQL"
apt-get install -y mysql-server libapache2-mod-auth-mysql php5-mysql

echo "Activate MySQL"
mysql_install_db

echo "Install PHP"
apt-get install -y php5 libapache2-mod-php5 php5-mcrypt


