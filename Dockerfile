FROM ruby:alpine
MAINTAINER Eric Carlson
LABEL maintainer "Eric Carlson <e.carlson94@gmail.com>"

ARG user=walawren
ARG group=wheel
ARG uid=1000

USER root

RUN \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk upgrade --no-cache && \
    apk add --update --no-cache \
        sudo \
        ncurses \
        ca-certificates \
        libressl \
        git git-doc \
        python3 \
        python3-dev \
        py3-pip \
        perl \
        bash \
        bash-completion \
        cmake \
        ctags \
        file \
        curl \
        build-base \
        gcc \
        coreutils \
        wget \
        gnupg-scdaemon \
        pcsc-lite \
        gnupg \
        npm \
        yarn \
        neovim \
        zsh \
        fontconfig \
        ripgrep \
        tmux \
        docker \
        docker-compose \
        go

ENV GEM_HOME /usr/local/bundle
ENV PATH $GEM_HOME:$PATH

RUN \
    mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME" && \
    echo "%${group} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    adduser -D -G ${group} ${user} && \
    addgroup ${user} docker

COPY ./ /home/${user}/.dotfiles/
RUN \
    chown -R ${user}:${group} /home/${user}/.dotfiles && \
    cd /home/${user}/.dotfiles

USER ${user}
RUN \
    cd $HOME/.dotfiles && \
    if [ ! -d ~/.fzf ]; then git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf; fi && ~/.fzf/install --key-bindings --completion --no-update-rc && \
    gem install tmuxinator && \
    sudo go get -u github.com/boyter/scc/ && \
    ./install-profile no-deps \
        zsh-dependencies \
        zsh-plugins \
        vim-dependencies \
        vim-plugins \
        gnupg-configure

CMD [ "zsh" ]
