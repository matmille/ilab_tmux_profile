#!/bin/bash
SESSION="rhelai"

tmux kill-session -t $SESSION
tmux new-session -d -s $SESSION
tmux split-window -h -t $SESSION:
tmux split-window -v -t $SESSION:
tmux resize-pane -R 20
tmux send-keys -t $SESSION:0.1 "nvtop" Enter
tmux send-keys -t $SESSION:0.2 'top' Enter
tmux select-pane -t $SESSION:0.0
tmux attach-session -t $SESSION
