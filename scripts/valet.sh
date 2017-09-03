#!/usr/bin/env bash

#change defaulut apache port
vi /etc/apache2/ports.conf

sudo apt-get install php7.0-curl 


composer global require cpriego/valet-linux


valet install

cd ~/Work
valet park
