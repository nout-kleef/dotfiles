#!/bin/bash

# this file copies all kinds of configuration files into the repo
# it preserves the directory structure. e.g.:
# 	~/.vim/bundle/<plugin> --> .vim/bundle/<plugin>

echo "cleaning.."
rm -rf .vim
rm .vimrc
rm .ssh/config
rm .bashrc
rm .config/Code/User/settings.json

cp ~/.bashrc .bashrc
echo "imported bash environment into repository."

cp -r ~/.vim .
cp ~/.vimrc .vimrc
echo "imported vim environment into repository."

cp ~/.ssh/config .ssh
echo "imported ssh user configuration file."

cp ~/.config/Code/User/settings.json .config/Code/User/settings.json
echo "imported VSCode environment into repository."

echo "done!"
