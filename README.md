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
9. `git clone git@github.com:ecarlson94/dotfiles.git`
10. `cd dotfiles`
11. `./setup.sh` (this could take upwards of 20 minutes)
12. `exit` (this exits zsh and allows `./setup.sh` to finish)
13. Close and reopen `iTerm`
14. Select `y` to install plugins
15. Follow configuration prompts
16. Navigate to `dotfiles` repo
17. `vi README.md` (`.vimrc` setup should commence)

### Linux/WSL
1. (WSL) Download [MesloLGS NF Regular.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf)
2. (WSL) Right click file in windows explorer and click `Install`
3. Start terminal
4. (WSL) Right click program bar > Properties > set font to `MesloLGS NF`
5. `git clone git@github.com:ecarlson94/dotfiles.git`
6. `cd dotfiles`
7. `./setup.sh` (this could take upwards of 20 minutes)
8. Answer `y` for the fuzzy prompts
9. Restart terminal
10. Select `y` to install plugins
11. Follow configuration prompts
12. Navigate to `dotfiles` repo
13. `vi README.md` (`.vimrc` setup should commence)
