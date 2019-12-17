#!/bin/bash

# clean
echo "cleaning.."
rm -rf ~/.vim
rm ~/.vimrc
rm ~/.bashrc

# vim
echo "setting up vim environment.."
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cp -r bundle ~/.vim/
cp .vimrc_sample ~/.vimrc

# bash environment, aliases and stuff
echo "setting up bash environment.."
cp .bashrc_sample ~/.bashrc

echo "done!"
