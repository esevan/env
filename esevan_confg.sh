#!/bin/bash
echo "Importing bashrc & virmc..."
cd ~/
git clone --quiet https://github.com/esevan/env.git
mv env/.* ~/
rm -rf env
echo "Installation complete!"

