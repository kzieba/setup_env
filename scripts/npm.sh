#!/usr/bin/env bash

sudo apt-get install npm

sudo npm install npm@latest -g

#if
#npm config get prefix
#is
#/usr/local
#else
#https://docs.npmjs.com/getting-started/fixing-npm-permissions
#sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
