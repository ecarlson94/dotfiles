#!/bin/bash

docker run -it --rm \
  -v "$PWD:$PWD" \
  -w "$PWD"
  -u `id -u` \
  walawren/dotfiles:latest "$@"
