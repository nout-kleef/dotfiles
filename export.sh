#!/bin/bash

echo "cleaning.."
rm -rf ~/.vim
#rm ~/.ssh/config ## no longer tracking ssh config
rm ~/.vimrc
rm ~/.bashrc
rm ~/.bash_aliases
rm ~/.config/Code/User/settings.json

cp .bashrc ~
cp .bash_aliases ~
echo "set up bash environment."

cp -r .vim ~
cp .vimrc ~ 
echo "set up vim environment."

#cp .ssh/config ~/.ssh/config
#echo "set up ssh user configuration."

cp .config/Code/User/settings.json ~/.config/Code/User/settings.json
echo "set up VSCode environment."

echo "done!"
