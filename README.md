# Dotfiles

Dotfile management using [Dotbot](https://github.com/anishathalye/dotbot).
Structure of this repository is strongly inspired by [vsund](https://github.com/vsund/dotfiles) and [vbrandl](https://github.com/vbrandl/dotfiles).

## Dependencies
* [Homebrew](https://brew.sh) (OSX)
* [Linuxbrew](https://gist.github.com/ecarlson94/283102ffd2f2473d41e7c9965be8fdd4#install-homebrew) (Linux)
* [Powerline Font](https://github.com/romkatv/powerlevel10k#fonts)

## Installation

```bash
~$ git clone --recursive https://github.com/magicmonty/dotfiles_dotbot .dotfiles
~$ cd ~/.dotfiles
```

### For installing a predefined profile:

```bash
~/.dotfiles$ ./install-profile <profile> [<configs...>]
```
See [meta/profiles/](./meta/profiles) for available profiles

### For installing single configurations:

```bash
~/.dotfiles$ ./install-standalone <configs...>
```
See [meta/configs/](./meta/configs) for available configurations

### Post-Installation
You can run the above installation commands safely multiple times, if you think that helps with better installation.

1. Restart terminal
1. Select `y` to install plugins
1. (Linux) Run `compaudit | xargs chmod go-w`
