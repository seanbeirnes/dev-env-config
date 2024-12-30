#!/bin/bash

syncbrew=$1

printf "\r\t %-120s" "Setting helper script permissions..."
chmod +x ./brew/sync-brew.sh
chmod +x ./ghostty/sync-ghostty.sh
chmod +x ./nvim/sync-nvim.sh
chmod +x ./zsh/sync-zsh.sh


printf "\r\t %-120s" "Running helper scripts..."

# Syncing homebrew takes a while so the user must explicitly choose to do it
if [[ "$syncbrew" == "true" ]]; then
    ./brew/sync-brew.sh
fi

./ghostty/sync-ghostty.sh
./nvim/sync-nvim.sh
./zsh/sync-zsh.sh
