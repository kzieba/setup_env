#!/usr/bin/env bash

#This program enables windows, panes, and sessions in one terminal;

#if ! type "tmux" > /dev/null; then
#	# installing tmux
#	sudo apt-get install tmux
#	./install_scripts/tmux.sh
#fi

#tmux list-keys | shuf -n 1

echo 'installing tmux'
sudo apt-get install tmux
if type "tmux" > /dev/null; then
	if [ ! -d ~/.things/tmux-resurrect ]
		echo 'installing tmux-resurrect'
		#This plugin for tmux enables saving and restoring sessions with all config
		#prefix + Ctrl-s - save
		#prefix + Ctrl-r - restore

		git clone https://github.com/tmux-plugins/tmux-resurrect ~/.things/tmux-resurrect
		echo 'run-shell ~/.things/tmux-resurrect/resurrect.tmux' >> ~/.tmux.conf
		#tmux source-file ~/.tmux.conf
	fi

	if [ -d ~/.things/tmux-continuum ]
		if [ ! -d ~/.things/tmux-continuum ]
			echo 'installing tmux-continuum'
			#This plugin for tmux enables saving and restoring sessions with all config
			#continuous saving of tmux environment
			#automatic tmux start when computer/server is turned on
			#automatic restore when tmux is started

			git clone https://github.com/tmux-plugins/tmux-continuum ~/.things/tmux-continuum
			echo 'run-shell~/.things/tmux-continuum/continuum.tmux"'>> ~/.tmux.conf
			echo "set -g @continuum-restore 'on'" >> ~/.tmux.conf
		fi
	fi
fi
