#!/bin/bash

spinner() {
    local pid=$1 # Process ID of the command to wait for
    local delay=0.1
    local spinstr='|/-\'
    while kill -0 "$pid" 2>/dev/null; do
        local char="${spinstr:i%${#spinstr}:1}" # Cycle through spinner characters
        printf "\r[%c]\t" "$char"
        i=$((i + 1))    
        sleep "$delay"
    done
    printf "\r[✔] %-120s\n" "Done!"
}

syncbrew=false

while true; do
    read -p "Would you like to sync all Homebrew fomulae and casks? [Y/n] (Warning: This may take a while) " answer
    case $answer in
        [Yy]* ) syncbrew=true; break;;
        [Nn]* ) break;;
        * ) echo "Invalid input: Enter 'y' or 'n'";;
    esac
done

chmod +x ./helper.sh

./helper.sh "$syncbrew" & helper_pid=$!

spinner "$helper_pid"


echo "You should restart your terminal session to reload configs."
echo "Don't forget to set your git global config with your username and PRIVATE email"
