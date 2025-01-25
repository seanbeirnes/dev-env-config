#!/bin/bash

syncbrew=$1

printf "\r\t %-120s" "Setting helper script permissions..."
chmod +x ./brew/sync-brew.sh
chmod +x ./ghostty/sync-ghostty.sh
chmod +x ./nvim/sync-nvim.sh
chmod +x ./zsh/sync-zsh.sh
chmod +x ./tmux/sync-tmux.sh
chmod +x ./karabiner/sync-karabiner.sh


printf "\r\t %-120s" "Running helper scripts..."

# Syncing homebrew takes a while so the user must explicitly choose to do it
if [[ "$syncbrew" == "true" ]]; then
    ./brew/sync-brew.sh
fi

./zsh/sync-zsh.sh # Must be first in list
./ghostty/sync-ghostty.sh
./nvim/sync-nvim.sh
./tmux/sync-tmux.sh
./karabiner/sync-karabiner.sh
