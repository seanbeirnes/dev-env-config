#!/bin/bash
printf "\r\t %-120s" "Syncing tmux config..."

# Ensure a clean ghostty config directory exists
rm -rf ~/.config/tmux
mkdir ~/.config/tmux

# Copy config
cp ./tmux/tmux.conf ~/.config/tmux/tmux.conf
