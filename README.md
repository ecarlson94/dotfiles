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
5. Continue to [Mac](#mac), [WSL](#wsl), or [Debian](#debian)

### Mac
1. [Install Homebrew](https://brew.sh)
3. Run `brew install python`
2. Run `./install mac` (this could take upwards of 20 minutes)
3. Restart terminal
4. Select `y` to install plugins
5. Follow configuration prompts

### WSL
1. Run `sudo apt-get install python3 python3-apt`
2. Run `./install wsl aptget` (this could take upwards of 20 minutes)
3. Restart terminal
4. Select `y` to install plugins
5. Follow configuration prompts
6. `compaudit | xargs chmod go-w`

### Debian
1. Run `sudo apt-get install python3 python3-apt`
2. Run `./install debian aptget` (this could take upwards of 20 minutes)
3. Restart terminal
4. Select `y` to install plugins
5. Follow configuration prompts
