#! /bin/sh

ln -s ~/Documents/gitrepos/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/Documents/gitrepos/dotfiles/.vimrc ~/.vimrc
ln -s ~/Documents/gitrepos/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Documents/gitrepos/dotfiles/.zshrc ~/.zshrc
ln -s ~/Documents/gitrepos/dotfiles/.zshrc.pre-oh-my-zsh ~/.zshrc.pre-oh-my-zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-docker.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-docker
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
