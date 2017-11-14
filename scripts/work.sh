#!/usr/bin/env bash

cd ~/Work
#valet start

# Setup session: detached, name work
tmux new-session -d -s work
#set mouse on
tmux set mouse on
#set vim copy mode
tmux set-window-option -g mode-keys vi


for VARIABLE in hello learning
do
	~/tmux-window.sh $VARIABLE
done

tmux -2 attach-session -t work

