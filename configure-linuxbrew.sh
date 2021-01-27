#!/usr/bin/env bash

if [ -d ~/.linuxbrew ]; then eval $(~/.linuxbrew/bin/brew shellenv); fi

if [ -d /home/linuxbrew/.linuxbrew ]; then eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv); fi

if [ -r ~/.bash_profile ]; then echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile; fi

echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

brew update-reset

brew bundle --file Brewfile.linux
