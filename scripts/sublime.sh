#!/usr/bin/env bash

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

echo "alias sublime /opt/sublime_text/sublime_text" >> ~/.bashrc

#sudo apt-get remove sublime-text && sudo apt-get autoremove
