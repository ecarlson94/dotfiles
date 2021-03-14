#!/bin/bash

docker run -it --rm \
  -v "$PWD:$PWD" \
  -w "$PWD" \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v ${HOME}/.gnupg/:/.gnupg/:ro \
  -v /run/user/$(id -u)/:/run/user/$(id -u)/:ro \
  -u `id -u` \
  walawren/dotfiles:latest "$@"
