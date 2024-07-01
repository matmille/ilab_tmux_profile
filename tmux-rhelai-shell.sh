#!/bin/bash
SESSION="rhelai"

tmux kill-session -t $SESSION
tmux new-session -d -s $SESSION
tmux split-window -h -t $SESSION:
tmux split-window -v -t $SESSION:
tmux resize-pane -R 20
tmux send-keys -t $SESSION:0.1 "nvtop" Enter
tmux send-keys -t $SESSION:0.2 'watch -n5 "top -bn 1 | grep \"^ \" | tr -s \" \"  | cut -d\" \" -f2,10,11 | column -s\" \" -t | head -10"' Enter
tmux select-pane -t $SESSION:0.0
tmux attach-session -t $SESSION
