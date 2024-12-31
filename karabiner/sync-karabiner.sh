#!/bin/bash
printf "\r\t %-120s" "Syncing Karabiner config..."

# Ensure a clean karabiner config directory exists
rm -rf ~/.config/karabiner
mkdir ~/.config/karabiner

# Copy config
cp ./karabiner/karabiner.json ~/.config/karabiner/karabiner.json
