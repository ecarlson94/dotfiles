#! /bin/bash

echo "What is your first name?"
read firstName

echo "What is your last name?"
read lastName

echo "What is your git email?"
read gitEmail

echo "Backup original dotfiles (y/n)"
read backup

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

brew install python fzf ripgrep neovim zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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
  if test -f $HOME/$d; then
    if [ $backup = "y" ]; then
      echo "Backing up $HOME/$d to $HOME/$d.bac..."
      cp $HOME/$d $HOME/$d.bac
    fi
    rm $HOME/$d
  fi

  echo "Creating symlink from $DIR/$d to $HOME/$d"
  ln -s $DIR/$d $HOME/$d
done

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ $machine = "Linux" ]
then
  sed -i "s|<home>|$HOME|g" $DIR/.zshrc
  sed -i "s|<home>|$HOME|g" $DIR/.fzf.zsh
  sed -i "s|<home>|$HOME|g" $DIR/.fzf.bash
  sed -i "s/<firstName>/$firstName/g" $DIR/.gitconfig
  sed -i "s/<lastName>/$lastName/g" $DIR/.gitconfig
  sed -i "s/<gitEmail>/$gitEmail/g" $DIR/.gitconfig
elif [ $machine = "Mac" ]
then
  sed -i '' "s|<home>|$HOME|g" $DIR/.zshrc
  sed -i '' "s|<home>|$HOME|g" $DIR/.fzf.zsh
  sed -i '' "s|<home>|$HOME|g" $DIR/.fzf.bash
  sed -i '' "s/<firstName>/$firstName/g" $DIR/.gitconfig
  sed -i '' "s/<lastName>/$lastName/g" $DIR/.gitconfig
  sed -i '' "s/<gitEmail>/$gitEmail/g" $DIR/.gitconfig
fi

echo "Restart your terminal..."
