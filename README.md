# Dotfiles
Dotfile management using [Dotbot](https://github.com/anishathalye/dotbot).

The structure of this repository is heavily inspired by [vsund](https://github.com/vsund/dotfiles) and [vbrandl](https://github.com/vbrandl/dotfiles).

<!-- TOC GFM -->

- [Dependencies](#dependencies)
- [Installation](#installation)
    - [For installing a predefined profile:](#for-installing-a-predefined-profile)
        - [Set global git user name and email](#set-global-git-user-name-and-email)
    - [For installing single configurations:](#for-installing-single-configurations)
    - [Post-Installation](#post-installation)
- [Contents](#contents)
    - [Profiles](#profiles)
    - [Configs](#configs)
- [License](#license)

<!-- /TOC -->

## Dependencies
- curl

## Installation

```bash
~$ git clone --recursive git@github.com:ecarlson94/dotfiles.git ~/.dotfiles
~$ cd ~/.dotfiles
```

### For installing a predefined profile:

```bash
~/.dotfiles$ ./install-profile <profile> [<configs...>]
```
See [meta/profiles/](./meta/profiles) for available profiles


#### Set global git user name and email

```bash
~/.dotfiles$ ./install-profile <profile> git-override
```

### For installing single configurations:

```bash
~/.dotfiles$ ./install-standalone <configs...>
```
See [meta/configs/](./meta/configs) for available configurations

_*Note:*_ Any configuration can be run as sudo by adding `-sudo` to the end of it when invoking the install script.
*DO NOT* run the script as a sudoer.

### Post-Installation
You can run the above installation commands safely multiple times, if you think that helps with better installation.

1. Restart terminal
1. (WSL) Run `compaudit | xargs chmod go-w`

## Contents

### Profiles
```
meta/profiles
├── ubuntu-desktop
├── ubuntu
├── ubuntu-no-sudo
├── mac
└── no-deps (Skips dependency install, requires another profile be run first)
```

### Configs
```
meta
├── base.json
└── configs
    ├── alacritty-cargo.yaml
    ├── alacritty-ubuntu-deps.yaml
    ├── alacritty.yaml
    ├── apt.yaml
    ├── bash.yaml
    ├── dir-colors.yaml
    ├── fonts-linux.yaml
    ├── fonts-mac.yaml
    ├── git-override.yaml (Allows setting user.name and user.email)
    ├── git.yaml
    ├── github.yaml
    ├── gnupg.yaml
    ├── gnupg-mac.yaml
    ├── gnupg-configure.yaml
    ├── homebrew.yaml
    ├── ubuntu-desktop.yaml (contains packages that are gui based)
    ├── tmux.yaml
    ├── tmuxinator.yaml
    ├── vim-dependencies.yaml
    ├── vim-plugins.yaml
    ├── vim.yaml
    ├── zsh-dependencies.yaml
    ├── zsh-plugins.yaml
    └── zsh.yaml
```

## License
This software is hereby released under an MIT License. That means you can do whatever you want with conditions only requiring preservation of copyright and license notices.
See [LICENSE](./LICENSE) for details.
