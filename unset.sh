#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

git checkout $DIR

declare -a dotfiles=(.bash_profile
  .bashrc
  .vimrc
  .gitconfig
  .zshrc
  .zshrc.pre-oh-my-zsh
  .fzf.zsh
  .fzf.bash
  .bash_aliases
)

for d in "${dotfiles[@]}"
do
  if test -f $HOME/$d.bac; then
    mv $HOME/$d.bac $HOME/$d
  else
    rm $HOME/$d
  fi
done

echo "Restart your terminal..."
