# Dotfiles

Dotfile management using [Dotbot](https://github.com/anishathalye/dotbot).
Structure of this repository is strongly inspired by [vsund](https://github.com/vsund/dotfiles) and [vbrandl](https://github.com/vbrandl/dotfiles).

## Dependencies
* [Homebrew](https://brew.sh) (OSX)
* [Linuxbrew](https://gist.github.com/ecarlson94/283102ffd2f2473d41e7c9965be8fdd4#install-homebrew) (Linux)
* [Powerline Font](https://github.com/romkatv/powerlevel10k#fonts)

## Installation

```bash
~$ git clone --recursive https://github.com/ecarlson94/dotfiles ~/.dotfiles
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

## Contents

### Profiles
```
meta/profiles
├── linux
├── linux-no-deps (Doesn't install dependencies)
├── mac
└── mac-no-deps (Doesn't install dependencies)
```

### Configs
```
meta
├── base.json
└── configs
    ├── bash.yaml
    ├── git-override.yaml (Allows setting user.name and user.email)
    ├── git.yaml
    ├── homebrew.yaml
    ├── linux-dependencies.yaml
    ├── linuxbrew.yaml
    ├── macos-dependencies.yaml
    ├── vim-dependencies.yaml
    ├── vim.yaml
    └── zsh.yaml
```

## License
This software is hereby released under an MIT License. That means you can do whatever you want with conditions only requiring preservation of copyright and license notices.
See [LICENSE](./LICENSE) for details.
