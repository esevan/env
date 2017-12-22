#!/bin/bash
echo "Importing bashrc & virmc..."
cd ~/
git clone --quiet https://github.com/esevan/env.git
mv env/* ~/
rmdir env
echo "Installation complete!"

