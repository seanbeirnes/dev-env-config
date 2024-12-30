#!/bin/bash
printf "\r\t %-120s" "Syncing Ghostty config..."

# Ensure a clean ghostty config directory exists
rm -rf ~/.config/ghostty
mkdir ~/.config/ghostty

# Copy config
cp ./ghostty/config ~/.config/ghostty/config
