#!/bin/bash
echo "Importing bashrc & virmc..."
cd ~/
git clone --quiet https://github.com/esevan/env.git
cp env/.vimrc ~/.vimrc
cp env/.bashrc ~/.bashrc
cp env/.inputrc ~/.inputrc
cp env/.tmux.conf ~/.tmux.conf
echo "Installation complete!"

