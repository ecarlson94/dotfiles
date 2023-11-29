# Dotfiles

Dotfile management using [Dotbot](https://github.com/anishathalye/dotbot).

This repository contains only dotfiles for symlink. For base dev machine configuration,
please review [ecarlson94/devbox](https://github.com/ecarlson94/devbox).

The structure of this repository is heavily inspired by
[vsund](https://github.com/vsund/dotfiles) and [vbrandl](https://github.com/vbrandl/dotfiles).

## Table of Contents

<!-- TOC GFM -->

- [Dotfiles](#dotfiles)
  - [Table of Contents](#table-of-contents)
  - [Dependencies](#dependencies)
  - [Installation](#installation)
    - [For installing a predefined profile](#for-installing-a-predefined-profile)
      - [Set global git user name and email](#set-global-git-user-name-and-email)
    - [For installing single configurations](#for-installing-single-configurations)
  - [Contents](#contents)
    - [Profiles](#profiles)
  - [License](#license)

<!-- TOC -->

## Dependencies

- git

## Installation

```bash
~$ git clone --recursive git@github.com:ecarlson94/dotfiles.git ~/.dotfiles
~$ cd ~/.dotfiles
```

### For installing a predefined profile

```bash
~/.dotfiles$ ./install-profile <profile> [<configs...>]
```

See [meta/profiles/](./meta/profiles) for available profiles

#### Set global git user name and email

```bash
~/.dotfiles$ ./install-profile <profile> git-override
```

### For installing single configurations

```bash
~/.dotfiles$ ./install-standalone <configs...>
```

See [meta/configs/](./meta/configs) for available configurations

## Contents

### Profiles

<pre>
meta/profiles
├── <a href="./meta/profiles/headless" title="headless">headless</a>
├── <a href="./meta/profiles/linux" title="linux">linux</a>
└── <a href="./meta/profiles/mac" title="mac">mac</a>
</pre>

## License

This software is hereby released under an MIT License. That means you can do whatever you want with conditions only requiring preservation of copyright and license notices.
See [LICENSE](./LICENSE) for details.

