# Dotfiles
Dotfile management using [Dotbot](https://github.com/anishathalye/dotbot).

This repository contains only dotfiles for symlink. For dependency management, please review [ecarlson94/dev-container](https://github.com/ecarlson94/dev-container).

The structure of this repository is heavily inspired by [vsund](https://github.com/vsund/dotfiles) and [vbrandl](https://github.com/vbrandl/dotfiles).

<!-- TOC GFM -->

- [Dependencies](#dependencies)
- [Installation](#installation)
    - [For installing a predefined profile:](#for-installing-a-predefined-profile)
        - [Set global git user name and email](#set-global-git-user-name-and-email)
    - [For installing single configurations:](#for-installing-single-configurations)
- [Contents](#contents)
    - [Profiles](#profiles)
    - [Configs](#configs)
- [License](#license)

<!-- /TOC -->

## Dependencies
- git

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

## Contents

### Profiles
<pre>
meta/profiles
├── <a href="./meta/profiles/mac" title="mac">mac</a>
└── <a href="./meta/profiles/linux" title="linux">linux</a>
</pre>

### Configs
<pre>
meta
├── <a href="./meta/base.yaml" title="base.yaml">base.yaml</a>
└── configs
    ├── <a href="./meta/configs/alacritty.yaml" title="alacritty.yaml">alacritty.yaml</a>
    ├── <a href="./meta/configs/bash.yaml" title="bash.yaml">bash.yaml</a>
    ├── <a href="./meta/configs/dir-colors.yaml" title="dir-colors.yaml">dir-colors.yaml</a>
    ├── <a href="./meta/configs/git-override.yaml" title="git-override.yaml">git-override.yaml</a> (Allows setting user.name and user.email)
    ├── <a href="./meta/configs/git.yaml" title="git.yaml">git.yaml</a>
    ├── <a href="./meta/configs/github.yaml" title="github.yaml">github.yaml</a>
    ├── <a href="./meta/configs/gnupg.yaml" title="gnupg.yaml">gnupg.yaml</a>
    ├── <a href="./meta/configs/gnupg-mac.yaml" title="gnupg-mac.yaml">gnupg-mac.yaml</a>
    ├── <a href="./meta/configs/tmux.yaml" title="tmux.yaml">tmux.yaml</a>
    ├── <a href="./meta/configs/tmuxinator.yaml" title="tmuxinator.yaml">tmuxinator.yaml</a>
    ├── <a href="./meta/configs/vim.yaml" title="vim.yaml">vim.yaml</a>
    └── <a href="./meta/configs/zsh.yaml" title="zsh.yaml">zsh.yaml</a>
</pre>

## License
This software is hereby released under an MIT License. That means you can do whatever you want with conditions only requiring preservation of copyright and license notices.
See [LICENSE](./LICENSE) for details.
