FROM alpine:edge
MAINTAINER Eric Carlson
LABEL maintainer "Eric Carlson <e.carlson94@gmail.com>"

RUN \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk upgrade --no-cache && \
    apk add --update --no-cache \
        ca-certificates \
        git git-doc \
        python3 \
        py3-pip \
        bash

RUN \
    echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    adduser -D -G wheel walawren

USER walawren
WORKDIR /home/walawren

RUN \
    # Rewrite clones to use https, instead of ssh \
    git config --global url."https://github.com/".insteadOf git@github.com: && \
    git config --global url."https://".insteadOf git:// && \
    # Install dotfiles \
    git clone --recursive "git@github.com:ecarlson94/dotfiles.git" "$HOME/.dotfiles" && \
    cd "$HOME/.dotfiles" && \
    ./install-profile no-deps
