#!/bin/bash

tmux kill-session -t Music

tmux new -s Music -n Music -d -x 252 -y 29
tmux splitw -h -t Music
tmux splitw -v -p 5 -t Music
tmux selectp -U
tmux selectp -L

sleep 0.1
tmux send-keys -t Music:0.0 'ncmpcpp -s playlist' Enter
sleep 0.1
tmux send-keys -t Music:0.1 'ncmpcpp -s browser' Enter
sleep 0.1
tmux send-keys -t Music:0.2 'ncmpcpp -s visualizer' Enter

urxvt -name Music -e tmux attach-session -t Music
