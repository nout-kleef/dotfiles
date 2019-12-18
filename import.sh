#!/bin/bash

# this file copies all kinds of configuration files into the repo
# it preserves the directory structure. e.g.:
# 	~/.vim/bundle/<plugin> --> .vim/bundle/<plugin>

cp -r ~/.vim/bundle .vim/bundle
cp ~/.vimrc .vimrc
echo "imported vim environment into repository."

cp ~/.ssh/config .ssh
echo "imported ssh user configuration file."

cp ~/.bashrc .bashrc
echo "imported bash environment into repository."

echo "done!"
