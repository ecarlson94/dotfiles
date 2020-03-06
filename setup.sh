#! /bin/sh

brew install neovim zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -s ~/Documents/gitrepos/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/Documents/gitrepos/dotfiles/.vimrc ~/.vimrc
ln -s ~/Documents/gitrepos/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Documents/gitrepos/dotfiles/.zshrc ~/.zshrc
ln -s ~/Documents/gitrepos/dotfiles/.zshrc.pre-oh-my-zsh ~/.zshrc.pre-oh-my-zsh
ln -s ~/Documents/gitrepos/dotfiles/.fzf.zsh ~/.fzf.zsh
ln -s ~/Documents/gitrepos/dotfiles/.fzf.bash ~/.fzf.bash
ln -s ~/Documents/gitrepos/dotfiles/.bash_aliases ~/.bash_aliases

upgrade_oh_my_zsh
