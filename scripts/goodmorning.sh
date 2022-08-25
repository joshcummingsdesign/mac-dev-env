#!/usr/bin/env bash

tmux new -d -s 0
tmux send-keys -t 0.0 "tmux rename-window vocalize && vocalize" ENTER
tmux a -t 0
