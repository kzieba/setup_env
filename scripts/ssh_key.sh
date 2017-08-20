#!/usr/bin/env bash


ssh-keygen -t rsa -b 4096 -C "krzysztofkamilzieba@gmail.com"

#Start the ssh-agent in the background.

eval "$(ssh-agent -s)"

#Add your SSH private key to the ssh-agent. 

ssh-add ~/.ssh/id_rsa

#copy public key to clipboard
#xclip -sel clip < ~/.ssh/id_rsa.pub
