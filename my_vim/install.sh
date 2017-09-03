#!/bin/bash

set -u

#check yum or apt-get 
isApt=`whereis apt-get | sed s/apt-get://g`
isYum=`whereis yum | sed s/yum://g`

if [ -n "$isApt" ]; then
	Installer="apt-get"	
elif [ -n "$isYum" ];then
	Installer="yum"
else
	echo "Neither Apt nor Yum!"
	exit -1
fi

echo -e "\033[32m install nessesary packages\033[0m"
sudo $Installer update
sudo $Installer install git-core vim curl byacc -y
sudo $Installer install git curl gcc make automake flex -y
sudo $Installer install libncurses5-dev  exuberant-ctags -y
sudo $Installer install tmux -y

echo -e "\033[32m install cscope from tarball\033[0m"
echo -e "\033[32m cscopeversion 2.0 [2015-03-23]\033[0m"
tar -zvxf cscope.tar.gz 
cd cscope/cscope
touch *
./configure
make 
sudo make install
cd ../..
rm -rf cscope

echo -e "\033[32m git clone vundle\033[0m"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

#copy vimrc to ~/
echo -e "\033[32m copy vimrc to home directory\033[0m"
cp -i .vimrc ~/

#copy vimrc to ~/
echo -e "\033[32m copy tmux.conf to home directory\033[0m"
cp -i .tmux.conf ~/

echo -e "\033[32m install all plugin\033[0m"
vim +PluginInstall +qall

echo -e "\033[32m done...\033[0m"

