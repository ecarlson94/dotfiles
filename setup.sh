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
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
  curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb
  sudo dpkg -i ripgrep_11.0.2_amd64.deb
  rm ripgrep*
  sudo apt-get install fontconfig zsh python3-dev python-pip python neovim cmake build-essential mono-complete nodejs npm -y

  wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
  wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
  mkdir -p $HOME/.local/share/fonts/
  mkdir -p $HOME/.config/fontconfig/conf.d/
  mv PowerlineSymbols.otf $HOME/.local/share/fonts/
  fc-cache -vf ~/.local/share/fonts/
  mv 10-powerline-symbols.conf $HOME/.config/fontconfig/conf.d/
elif [ $machine = "Mac" ]
then
  brew install python fzf ripgrep neovim zsh wget cmake mono npm
  sudo easy_install pip
fi

pip install --user powerline-status

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

if test -f $HOME/.config/nvim/init.vim; then
  if [ $backup = "y" ]; then
    echo "Backing up $HOME/.config/nvim/init.vim to $HOME/.config/nvim/init.vim.bac..."
    cp $HOME/.config/nvim/init.vim $HOME/.config/nvim/init.vim.bac
  fi
  rm $HOME/.config/nvim/init.vim
fi

echo "Creating symlink from $DIR/.config/nvim/init.vim to $HOME/.config/nvim/init.vim"
mkdir -p $HOME/.config/nvim
ln -s $DIR/.config/nvim/init.vim $HOME/.config/nvim/init.vim

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

vim +PlugInstall +qa

echo "Restart your terminal..."
