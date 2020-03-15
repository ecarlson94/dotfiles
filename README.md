# Automated Terminal & Vim Configuration
## Requirements

- [Windows Subsystem for Linux](https://gist.github.com/ecarlson94/283102ffd2f2473d41e7c9965be8fdd4)
- Mac
- Linux

## Steps
1. Open terminal
2. Run `git clone git@github.com:ecarlson94/dotfiles.git ~/dotfiles`
3. Run `cd ~/dotfiles`
4. Run `git submodule init && git submodule update`

### Mac
1. [Install Homebrew](https://brew.sh)
2. `./install (this could take upwards of 20 minutes)
3. Close terminal and open `iTerm`
4. [Install Powerline Font](https://github.com/romkatv/powerlevel10k#fonts)
5. Select `y` to install plugins
6. Follow configuration prompts

### Linux and WSL
1. [Install Powerline Font](https://github.com/romkatv/powerlevel10k#fonts)
2. Run `./install (this could take upwards of 20 minutes)
3. Restart terminal
4. Select `y` to install plugins
5. Follow configuration prompts
6. `compaudit | xargs chmod go-w`
