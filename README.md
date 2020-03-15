# Automated Terminal & Vim Configuration
## Requirements

- [Windows Subsystem for Linux](https://gist.github.com/ecarlson94/283102ffd2f2473d41e7c9965be8fdd4)
- Mac
- Linux

## Steps
### Mac
1. Download and install `iTerm`
2. Download and install [MesloLGS NF Regular.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf) font
3. Open iTerm
4. `CMD+,`
5. Click `Profiles`
6. Click `Text`
7. Set the font to `MesoLGS NF`
8. Close Preferences
9. Install homebrew `/usr/bin/ruby -e "$(curl -fsSL https://raw.zshhubusercontent.com/Homebrew/install/master/install)"
brew doctor`
10. Run `brew install python`
11. Run `git clone git@github.com:ecarlson94/dotfiles.git ~/dotfiles`
12. `cd ~/dotfiles`
13. `./install (this could take upwards of 20 minutes)
14. Close and reopen `iTerm`
15. Select `y` to install plugins
16. Follow configuration prompts

### Linux/WSL
1. (WSL) Download [MesloLGS NF Regular.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf)
2. (WSL) Right click file in windows explorer and click `Install`
3. Start terminal
4. (WSL) Right click program bar > Properties > set font to `MesloLGS NF`
6. Run `git clone git@github.com:ecarlson94/dotfiles.git ~/dotfiles`
7. Run `cd ~/dotfiles`
8. Run `git submodule init && git submodule update`
9. Run `./install (this could take upwards of 20 minutes)
10. Restart terminal
11. Select `y` to install plugins
12. Follow configuration prompts
13. `compaudit | xargs chmod go-w`
