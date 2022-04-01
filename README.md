# Dotfiles
[![Trigger Dev Container Build](https://github.com/ecarlson94/dotfiles/actions/workflows/trigger-container-build.yml/badge.svg?branch=main)](https://github.com/ecarlson94/dotfiles/actions/workflows/trigger-container-build.yml)
[![Publish Docker Image](https://github.com/ecarlson94/userspace/actions/workflows/publish-docker-image.yml/badge.svg?event=repository_dispatch)](https://github.com/ecarlson94/userspace/actions/workflows/publish-docker-image.yml?query=event%3Arepository_dispatch++)

Dotfile management using [Dotbot](https://github.com/anishathalye/dotbot).

This repository contains only dotfiles for symlink. For dependency management,
please review [ecarlson94/userspace](https://github.com/ecarlson94/userspace).

The structure of this repository is heavily inspired by
[vsund](https://github.com/vsund/dotfiles) and [vbrandl](https://github.com/vbrandl/dotfiles).

## Table of Contents

<!-- TOC GFM -->

- [Dependencies](#dependencies)
- [Installation](#installation)
  - [For installing a predefined profile](#for-installing-a-predefined-profile)
    - [Set global git user name and email](#set-global-git-user-name-and-email)
  - [For installing single configurations](#for-installing-single-configurations)
- [Contents](#contents)
  - [Profiles a'](#profiles-a)
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

### Profiles a'

<pre>
meta/profiles
├── <a href="./meta/profiles/mac" title="mac">mac</a>
└── <a href="./meta/profiles/linux" title="linux">linux</a>
</pre>

## License

This software is hereby released under an MIT License. That means you can do whatever you want with conditions only requiring preservation of copyright and license notices.
See [LICENSE](./LICENSE) for details.

