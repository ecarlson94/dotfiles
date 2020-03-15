# Automated Terminal & Vim Configuration
## Requirements

- [Windows Subsystem for Linux](https://gist.github.com/ecarlson94/283102ffd2f2473d41e7c9965be8fdd4)
- Mac
- Linux

## Steps
### Mac
1. Download and install `iTerm`
2. [Install Powerline Font](https://github.com/romkatv/powerlevel10k#fonts)
3. [Install Homebrew](https://brew.sh)
4. Run `brew install python`
5. Run `git clone git@github.com:ecarlson94/dotfiles.git ~/dotfiles`
6. `cd ~/dotfiles`
7. `./install (this could take upwards of 20 minutes)
8. Close and reopen `iTerm`
9. Select `y` to install plugins
10. Follow configuration prompts

### Linux and WSL
1. [Install Powerline Font](https://github.com/romkatv/powerlevel10k#fonts)
2. Run `git clone git@github.com:ecarlson94/dotfiles.git ~/dotfiles`
3. Run `cd ~/dotfiles`
4. Run `git submodule init && git submodule update`
5. Run `./install (this could take upwards of 20 minutes)
6. Restart terminal
7. Select `y` to install plugins
8. Follow configuration prompts
9. `compaudit | xargs chmod go-w`
