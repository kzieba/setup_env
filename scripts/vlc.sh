#!/usr/bin/env bash

#sudo apt install vlc

sudo apt-get update

install CURL tool

sudo apt-get install curl

#load VideoLAN repository

curl ftp://ftp.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
echo "deb ftp://ftp.videolan.org/pub/debian/stable ./" | sudo tee /etc/apt/sources.list.d/libdvdcss.list
sudo apt-get update

install VLC and Mplayer, and their support elements

sudo apt-get install vlc vlc-data browser-plugin-vlc mplayer2

#sudo apt-get install vlc-plugin-pulse

#protected dvd
sudo apt-get install libdvd-pkg
