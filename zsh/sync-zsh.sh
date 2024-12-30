#!/bin/bash
printf "\r\t %-120s" "Syncing zsh config..."

# Remove old configs
rm -f ~/.zprofile
rm -f ~/.zshrc

# Copy configs
cp ./zsh/zprofile/.zprofile ~/.zprofile
cp ./zsh/zshrc/.zshrc ~/.zshrc
