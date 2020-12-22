# Dotfiles

Dotfile management using [Dotbot](https://github.com/anishathalye/dotbot).
Structure of this repository is heavily inspired by [vsund](https://github.com/vsund/dotfiles) and [vbrandl](https://github.com/vbrandl/dotfiles).

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
* [Powerline Font](https://github.com/romkatv/powerlevel10k#fonts)

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
├── mac
└── no-deps (Skips dependency install, requires another profile be run first)
```

### Configs
```
meta
├── base.json
└── configs
    ├── bash.yaml
    ├── git-override.yaml (Allows setting user.name and user.email)
    ├── git.yaml
    ├── github.yaml
    ├── homebrew.yaml
    ├── linuxbrew.yaml
    ├── vim-dependencies.yaml
    ├── vim-plugins.yaml
    ├── vim.yaml
    └── zsh.yaml
```

## License
This software is hereby released under an MIT License. That means you can do whatever you want with conditions only requiring preservation of copyright and license notices.
See [LICENSE](./LICENSE) for details.
