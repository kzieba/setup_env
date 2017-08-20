#!/usr/bin/env bash

sudo apt-get update
sudo apt-cache policy apache2
sudo apt-get install apache2

#sudo su
#echo 'ServerName server_domain_or_IP' >> /etc/apache2/apache2.conf
#exit
sudo apache2ctl configtest
sudo systemctl restart apache2

#Adjust the Firewall to Allow Web Traffic
sudo ufw app list
sudo ufw app info "Apache Full"
sudo ufw allow in "Apache Full"

#Find out server adress
#ip addr show eth0 | grep inet | awk '{ print $2; }' sed 's/\/.*$//'
sudo apt-get install curl
curl http://icanhazip.com

