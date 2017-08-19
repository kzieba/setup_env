#!/usr/bin/env bash

sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
sudo apt-get install php-xml php-mbstring php-zip
sudo systemctl restart apache2
sudo systemctl status apache2

#apt-cache search php- | less
#apt-cache show package_name
