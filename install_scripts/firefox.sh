#!/usr/bin/env bash

sudo apt-get update
sudo apt-cache policy firefox
sudo apt-get --purge --reinstall install firefox

#Firefox addons

#vimfx
wget https://addons.mozilla.org/firefox/downloads/latest/vimfx/addon-404785-latest.xpi
firefox addon-404785-latest.xpi

#ublock origin
wget https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/addon-607454-latest.xpi
firefox addon-607454-latest.xpi

# Replace config file ~/.mozilla/firefox/*.default/
