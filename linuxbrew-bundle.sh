#!/usr/bin/env bash

source ./configure-linuxbrew.sh

brew update-reset

brew bundle --file Brewfile.linux
