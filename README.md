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
- [Karabiner Elements (Key Remapper)](https://karabiner-elements.pqrs.org/)
- [neovim (Text Editor)](https://neovim.io/)
- [tmux (Terminal Multiplexer)](https://github.com/tmux/tmux/wiki)

**Note:** My Neovim config is located in a [separate repo](https://github.com/seanbeirnes/vim-config), but will be copied using this script.

## Instructions
**Important:** Homebrew must be installed before continuing.

1. Clone the repo locally
```bash
git clone https://github.com/seanbeirnes/dev-env-config.git
```
2. Change to the cloned directory
```bash
cd dev-env-config
```

3. Make the script executable
```bash
chmod +x sync.sh
```

4. Run the script
```bash
./sync.sh
```
