#!/bin/bash

printf "\r\t %-120s" "Setting helper script permissions..."
chmod +x ./brew/sync-brew.sh
chmod +x ./ghostty/sync-ghostty.sh
chmod +x ./nvim/sync-nvim.sh

printf "\r\t %-120s" "Running helper scripts..."
./brew/sync-brew.sh
./ghostty/sync-ghostty.sh
./nvim/sync-nvim.sh
