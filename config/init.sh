#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd )"
echo "##########	bash_profile"
ln -svi $DIR/bash_profile ~/.bash_profile
echo "##########	inputrc"
ln -svi $DIR/inputrc ~/.inputrc
echo "##########	git settings config"
ln -svi $DIR/gitconfig ~/.gitconfig
echo "##########	ssh/config"
mkdir -pv ~/.ssh/socket
ln -svi ~/github/MyScript/ssh/ssh_config ~/.ssh/config

echo "##########	mplayer"
mkdir -pv ~/.mplayer && ln -svi $DIR/mplayer.conf ~/.mplayer/config

echo "##########	vim"
config_folder="$HOME/github/UbuntuScript/config/vim"
ln -svi $config_folder/gvimrc $HOME/.gvimrc
ln -svi $config_folder/gvimrc $HOME/.vimrc
ln -svi $config_folder/vimfolder $HOME/.vim


#echo "######### Sublime"
#ln -svi $DIR/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings

# ln -svi ~/Library/Containers/com.apple.BKAgentService/Data/Documents/iBooks/Books ~/Documents/iBooks
