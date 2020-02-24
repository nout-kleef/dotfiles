#!/bin/bash

# this file copies all kinds of configuration files into the repo
# it preserves the directory structure. e.g.:
# 	~/.vim/bundle/<plugin> --> .vim/bundle/<plugin>

echo "cleaning.."
rm -rf .vim
rm .vimrc
rm .ssh/config
rm .bashrc
rm .bash_aliases
rm .config/Code/User/settings.json

cp ~/.bashrc .
cp ~/.bash_aliases .
echo "imported bash environment into repository."

cp -r ~/.vim .
cp ~/.vimrc .
echo "imported vim environment into repository."

## no longer tracking ssh config
cp ~/.ssh/config .ssh
echo "imported ssh user configuration file."

cp ~/.config/Code/User/settings.json .config/Code/User/settings.json
echo "imported VSCode environment into repository."

echo "done!"
