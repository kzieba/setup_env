#!/usr/bin/env bash

#update and upgrade
sudo apt-get update && sudo apt-get -y upgrade

#ubuntu allow multiple desktops
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 2
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2
