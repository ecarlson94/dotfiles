#! /bin/sh

echo "What is your first name?"
read firstName

echo "What is your last name?"
read lastName

echo "What is your git email?"
read gitEmail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

brew install python fzf ripgrep neovim zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git checkout .

rm $HOME/.bash_profile
rm $HOME/.vimrc
rm $HOME/.gitconfig
rm $HOME/.zshrc
rm $HOME/.zshrc.pre-oh-my-zsh
rm $HOME/.fzf.zsh
rm $HOME/.fzf.bash
rm $HOME/.bash_aliases

ln -s $DIR/.bash_profile $HOME/.bash_profile
ln -s $DIR/.vimrc $HOME/.vimrc
ln -s $DIR/.gitconfig $HOME/.gitconfig
ln -s $DIR/.zshrc $HOME/.zshrc
ln -s $DIR/.zshrc.pre-oh-my-zsh $HOME/.zshrc.pre-oh-my-zsh
ln -s $DIR/.fzf.zsh $HOME/.fzf.zsh
ln -s $DIR/.fzf.bash $HOME/.fzf.bash
ln -s $DIR/.bash_aliases $HOME/.bash_aliases

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
  sed -i "s/<firstName>/$firstName/g" $DIR/.gitconfig
  sed -i "s/<lastName>/$lastName/g" $DIR/.gitconfig
  sed -i "s/<gitEmail>/$gitEmail/g" $DIR/.gitconfig
elif [ $machine = "Mac" ]
then
  sed -i '' "s|<home>|$HOME|g" $DIR/.zshrc
  sed -i '' "s/<firstName>/$firstName/g" $DIR/.gitconfig
  sed -i '' "s/<lastName>/$lastName/g" $DIR/.gitconfig
  sed -i '' "s/<gitEmail>/$gitEmail/g" $DIR/.gitconfig
fi

echo "Restart your terminal..."
