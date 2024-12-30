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
    printf "\r[✔] Done!                                                                                            \n"
}
chmod +x ./helper.sh

./helper.sh & helper_pid=$!

spinner "$helper_pid"
