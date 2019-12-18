#!/bin/bash

# vim
echo "importing vim environment into repository.."
cp -r ~/.vim/bundle .
cp ~/.vimrc .vimrc_sample

# bash environment, aliases and stuff
echo "importing bash environment into repository.."
cp ~/.bashrc .bashrc_sample

echo "done!"
