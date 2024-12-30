#!/bin/bash
printf "\r\t %-120s" "Syncing Homebrew config..."

# Get input from homebrew config file. File should be in format of the output of the "brew list" command
input=$(cat ./brew/config)

printf "\r\t %-120s" "Syncing Homebrew formulae..."
echo "$input" | awk '/^==> Formulae/,/^$/' | tail -n +2 | xargs -n1 brew install

printf "\r\t %-120s" "Syncing Homebrew casks..."
echo "$input" | awk '/^==> Casks/,/^$/' | tail -n +2 | xargs -n1 brew install --cask

brew cleanup
