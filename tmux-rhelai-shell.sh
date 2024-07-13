#!/bin/bash
SESSION="rhelai"

sudo dnf -y install dialog mc systat

tmux kill-session -t $SESSION
tmux new-session -d -s $SESSION
tmux split-window -h -t $SESSION:
tmux split-window -v -t $SESSION:
tmux resize-pane -R 20
tmux send-keys -t $SESSION:0.0 "mc -x" Enter
sleep 1e-06
tmux send-keys -t $SESSION:0.0 "" Enter
sleep 1e-06
tmux send-keys -t $SESSION:0.0 "cd ~/instructlab-latest" Enter
sleep 1e-06
tmux send-keys -t $SESSION:0.0 "source venv/bin/activate" Enter
sleep 1e-06
tmux send-keys -t $SESSION:0.0 "clear" Enter
sleep 1e-06
tmux send-keys -t $SESSION:0.1 'nvtop && exit' Enter
tmux send-keys -t $SESSION:0.2 'top && exit' Enter
sleep 1
tmux send-keys -t $SESSION:0.2 't' Enter
sleep 1e-06
tmux send-keys -t $SESSION:0.2 't' Enter
sleep 1e-06
tmux send-keys -t $SESSION:0.2 'm' Enter
sleep 1e-06
tmux send-keys -t $SESSION:0.2 'm' Enter
sleep 1e-06
tmux send-keys -t $SESSION:0.2 'i' Enter
sleep 1e-06
tmux send-keys -t $SESSION:0.2 'z' Enter
tmux set-option mouse on
tmux select-pane -t $SESSION:0.0
tmux attach-session -t $SESSION
