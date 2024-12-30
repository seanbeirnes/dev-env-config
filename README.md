# Overview
This is my config for developing software on macOS. 
It handles all the minor details of updating config files, paths, etc. so that the dev environment can be easily replicated and synced across computers.
In the event a new computer needs to be set up, this script should make it very simple, as long has Homebrew is already installed.

## Dependencies
- [Homebrew](https://brew.sh/)

## Main Applications
The following are the main applications that are used/installed in this developer environment config.
- [Ghostty (Terminal Emulator)](https://ghostty.org/)
- [Homebrew (Package Manager)](https://brew.sh/)
- [NeoVim (Text Editor)](https://neovim.io/)

*Note:* My Neovim config is located in a separate repo, but will be copied using this script: [https://github.com/seanbeirnes/vim-config](https://github.com/seanbeirnes/vim-config)

## Instructions
*Important:* Homebrew must be installed before continuing.

1. Clone the repo locally
```bash
git clone https://github.com/seanbeirnes/dev-env-config.git
```

2. Make the script executable
```bash
chmod +x sync.sh
```

3. Run the script
```bash
./sync.sh
```
