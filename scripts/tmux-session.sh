#!/bin/sh
SESSION=${PWD##*/}
tmux attach-session -d -t $SESSION || tmux new-session -s $SESSION
