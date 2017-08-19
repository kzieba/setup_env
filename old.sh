#!/usr/bin/env bash

#This file is used to set-up some programs I am going to use.

#echo 'installing composer'
#echo 'installing laravel'
#echo 'installing tmux'

#echo 'installing tmux-resurrect'
##This plugin for tmux enables saving and restoring sessions with all config
##prefix + Ctrl-s - save
##prefix + Ctrl-r - restore
#
#git clone https://github.com/tmux-plugins/tmux-resurrect ~/.things/tmux-resurrect
#echo 'run-shell ~/.things/tmux-resurrect/resurrect.tmux' >> ~/.tmux.conf
#tmux source-file ~/.tmux.conf
#
#echo 'installing tmux-resurrect'
##This plugin for tmux enables saving and restoring sessions with all config
##continuous saving of tmux environment
##automatic tmux start when computer/server is turned on
##automatic restore when tmux is started
#
#git clone https://github.com/tmux-plugins/tmux-continuum ~/.things/tmux-continuum
#echo 'run-shell~/.things/tmux-continuum/continuum.tmux"'>> ~/.tmux.conf
#echo "set -g @continuum-restore 'on'" >> ~/.tmux.conf


if ! type "tmux" > /dev/null; then
	# installing tmux
	./console/tmux.sh
fi

tmux list-keys | shuf -n 1

if ! type "sqlite" > /dev/null; then
	sudo apt install sqlite
	sudo apt install php7.0-sqlite3
fi
