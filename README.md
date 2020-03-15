# Automated Terminal & Vim Configuration
## Requirements

- [Windows Subsystem for Linux](https://gist.github.com/ecarlson94/283102ffd2f2473d41e7c9965be8fdd4)
- Mac
- Linux

## Steps
1. Run `git clone git@github.com:ecarlson94/dotfiles.git ~/dotfiles`
2. Run `cd ~/dotfiles`
3. Run `git submodule init && git submodule update`

### Mac
1. Download and install `iTerm`
2. [Install Powerline Font](https://github.com/romkatv/powerlevel10k#fonts)
3. [Install Homebrew](https://brew.sh)
4. Run `brew install python`
5. `./install (this could take upwards of 20 minutes)
6. Close and reopen `iTerm`
7. Select `y` to install plugins
8. Follow configuration prompts

### Linux and WSL
1. [Install Powerline Font](https://github.com/romkatv/powerlevel10k#fonts)
2. Run `./install (this could take upwards of 20 minutes)
3. Restart terminal
4. Select `y` to install plugins
5. Follow configuration prompts
6. `compaudit | xargs chmod go-w`
