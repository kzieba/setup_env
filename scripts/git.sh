#!/usr/bin/env bash

sudo apt-get install git
#sudo apt-get install git-all
#sudo dpkg -r runit

#git config user.email "you@example.com"
#git config "Your Name"

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
mv git-completion.bash ~/.config/git-completion.bash

#echo 'source ~/git-completion.bash' >> .bashrc
