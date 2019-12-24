#!/bin/bash

echo "cleaning.."
rm -rf ~/.vim
rm ~/.ssh/config
rm ~/.vimrc
rm ~/.bashrc
rm ~/.bash_aliases
rm ~/.config/Code/User/settings.json

cp .bashrc ~/.bashrc
cp .bash_aliases ~/.bash_aliases
echo "set up bash environment."

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cp -r .vim ~
cp .vimrc ~/.vimrc
echo "set up vim environment."

cp .ssh/config ~/.ssh/config
echo "set up ssh user configuration."

cp .config/Code/User/settings.json ~/.config/Code/User/settings.json
echo "set up VSCode environment."

echo "done!"
