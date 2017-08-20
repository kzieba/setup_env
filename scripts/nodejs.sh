#!/usr/bin/env bash

sudo apt-get purge nodejs npm

#curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

#curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt-get install -y nodejs
