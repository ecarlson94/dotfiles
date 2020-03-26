# Automated Terminal & Vim Configuration
## Requirements

- [Windows Subsystem for Linux](https://gist.github.com/ecarlson94/283102ffd2f2473d41e7c9965be8fdd4)
- Mac
- Linux (Debian)

## Steps
1. Install terminal emulator of choice
2. Install and configure [Powerline Font](https://github.com/romkatv/powerlevel10k#fonts)
3. Run `git clone git@github.com:ecarlson94/dotfiles.git ~/dotfiles`
4. Run `cd ~/dotfiles`
5. Continue to [Mac](#mac) or [WSL & Debian](#wsl-&-debian)

### Mac
1. Run `./install mac` (this could take upwards of 20 minutes)
2. Restart terminal
3. Select `y` to install plugins

### WSL & Debian
1. Run `./install linux` (this could take upwards of 20 minutes)
2. Restart terminal
3. Select `y` to install plugins
4. `compaudit | xargs chmod go-w`
