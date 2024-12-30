#!/bin/bash
printf "\r\t %-120s" "Syncing Homebrew config..."

brew install --cask docker > log.txt
brew update > log.txt
