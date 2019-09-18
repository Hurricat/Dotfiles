#!/bin/bash

tmux kill-session -t Music

tmux new -s Music -n Music -d -x 270 -y 64 'ncmpcpp -s playlist'
tmux splitw -h -t Music 'ncmpcpp -s browser'
tmux splitw -v -p 33 -t Music 'ncmpcpp -s visualizer'
tmux selectp -U
tmux selectp -L

kitty --name='Music' -e tmux attach-session -t Music
