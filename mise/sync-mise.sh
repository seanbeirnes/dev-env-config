#!/bin/bash
printf "\r\t %-120s" "Syncing mise config..."

curl https://mise.run | sh

source ~/.zshrc # Reload config

echo "\r\t %-120s" "Installing Ruby on Rails"
mise use -g ruby@3
ruby --version
gem install rails
