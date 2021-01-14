#!/bin/bash

sudo apt-get install apache2 -y

sudo apt-get install php libapache2-mod-php -y

cd /var/www/html/ || exit
sudo chown hirito:hirito -R ./
cd

# replace www-data in /etc/apache2/envars

envvars_file="/etc/apache2/envvars"

sudo sed -i "s/www-data/hirito/" $envvars_file

sudo service apache2 restart

sudo apt-get install mysql-server -y

sudo apt-get install phpmyadmin -y
# password="5CkJEr89tV"

# query="ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$password';"

# sudo mysql -e "$query"

