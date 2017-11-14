#!/usr/bin/env bash

name=$1
dir=$2

if [ -z $dir ]
then 
dir=$name
fi;

cd ~/Work/$dir

tmux new-window -n $name
tmux select-window -t $name

tmux split-window -v
tmux send-keys "clear" C-m
tmux select-pane -t 0
tmux resize-pane -U 10
tmux split-window -h
tmux send-keys "clear" C-m
tmux select-pane -t 2
tmux split-window -h
tmux send-keys "clear" C-m
tmux select-pane -t 0

