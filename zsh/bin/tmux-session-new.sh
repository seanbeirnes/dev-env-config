#!/bin/bash

#
# This script automates the tasks for starting a new tmux session:
#   - Creates new tmux session in current directory
#   - Opens 2nd window
#   - Switches to 1st window
#   - Opens neovim in current directory in 1st window
#

SESSION_NAME=$(basename "$PWD")

if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
  echo "Tmux session '$SESSION_NAME' already exists. Attaching..."
  tmux attach-session -t "$SESSION_NAME"
  exit 0
fi

tmux new-session -d -s "$SESSION_NAME" -c "$PWD"
tmux new-window -t "$SESSION_NAME:2" -c "$PWD"
tmux select-window -t "$SESSION_NAME:1"
tmux send-keys -t "$SESSION_NAME:1" "nvim ." C-m
tmux attach-session -t "$SESSION_NAME"
