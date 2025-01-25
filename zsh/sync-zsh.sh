#!/bin/bash
printf "\r\t %-120s" "Syncing zsh config..."

# Remove old configs
rm -f ~/.zprofile
rm -f ~/.zshrc
rm -rf ~/bin

# Create user bin directory
mkdir ~/bin

# Copy configs
cp ./zsh/zprofile/.zprofile ~/.zprofile
cp ./zsh/zshrc/.zshrc ~/.zshrc

# Copy tmux new session automation script
cp ./zsh/bin/tmux-session-new.sh ~/bin/tmux-session-new.sh  
chmod +x ~/bin/tmux-session-new.sh
ln -s ~/bin/tmux-session-new.sh ~/bin/tnew # Enable script to run with 'tnew' shorthand
