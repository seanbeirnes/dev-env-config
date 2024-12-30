#!/bin/bash
printf "\r\t %-120s" "Syncing Neovim config..."

cd ~/.config
rm -rf nvim
git clone https://github.com/seanbeirnes/vim-config.git
mv vim-config nvim
