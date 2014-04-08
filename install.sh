#! /bin/sh
echo "initializing submodules"
git submodule init

echo "updating submodules"
git submodule update

echo "creating symlinks"
ln -s ~/.dotfiles/.vim ~/.vim
ln -s ~/.dotfiles/.vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
echo "-------- done! ---------"

cd  ~/.dotfiles/
git submodule init
git submodule update
