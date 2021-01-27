#!/usr/bin/env zsh

# Check if zplug is installed
if [ ! -d ~/.zplug ]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh
    zplug "zplug/zplug", hook-build:"zplug --self-manage"
fi
source ~/.zplug/init.zsh
source ~/.zsh/custom/plugins.zsh

if ! zplug check; then
    zplug install
fi
