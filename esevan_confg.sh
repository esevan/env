#!/bin/bash

echo "Updating apt-get repo..."
sudo apt-get -qq update
echo "Install dependency..."
sudo apt-get -qq install -y vim wget curl tar python-dev cmake ctags git openssh-server
echo "Exporting PATH...(PATH=$PATH:/usr/local/go/bin)"
export PATH=$PATH:/usr/local/go/bin

echo "Exporting GOPATH... (GOPATH=$HOME/go_workspace)"
mkdir -p $HOME/go_workspace
export GOPATH=$HOME/go_workspace

echo "Install golang..."
cd /usr/local
wget https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz -o /dev/null
tar -xzf go1.8.3.linux-amd64.tar.gz

go version

echo "Install pathogen..."
mkdir -p ~/.vim/autoload ~/.vim/bundle
cd ~/.vim/autoload
curl -LSso pathogen.vim https://tpo.pe/pathogen.vim
sudo apt-get -qq install -y mercurial

echo "Install vim-go"
cd ~/.vim/bundle
git clone --quiet https://github.com/fatih/vim-go.git

#echo "Install YCM"
#cd ~/.vim/bundle
#git clone --quiet https://github.com/Valloric/YouCompleteMe.git
#cd YouCompleteMe
#./install.sh

echo "Install Tagbar & Nerdtree"
cd ~/.vim/bundle
git clone --quiet https://github.com/majutsushi/tagbar.git
git clone --quiet https://github.com/scrooloose/nerdtree.git

echo "Importing bashrc & virmc..."
cd ~/
git clone --quiet https://github.com/esevan/env.git
cp env/.vimrc ~/.vimrc
cp env/.bashrc ~/.bashrc

vim +GoInstallBinaries +q

echo "Installation complete!"
echo "1. export PATH=$PATH:/usr/local/go/bin"
echo "2. export GOPATH=$GOPATH"

