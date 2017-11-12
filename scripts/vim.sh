#!/usr/bin/env bash

#sudo apt-get update
#sudo apt-cache policy vim

if ! command -v vim > /dev/null; then
    sudo apt-get install vim
fi

if ! test -e ~/.vim; then
    ln -s ./dotfiles/vim ~/.vim
    #ln -sf ./dotfiles/vim ~/.vim 
fi

if ! test -e ~/.vim/bundle/Vundle.vim; then
    #instaling Vundle for vim plugins management
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if ! test -e ~/.vimrc; then
    ln -s ./dotfiles/vimrc ~/.vimrc
fi

#open vim, install plugin and quit
vim +PluginInstall +qall
