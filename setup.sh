#!/bin/bash

set -eu

RUN_DIR=$(dirname $(realpath $0))

cp $RUN_DIR/bashrc $HOME/.bashrc
source $HOME/.bashrc

sudo apt-get install -y --no-install-recommends screen vim
cp $RUN_DIR/screenrc $HOME/.screenrc

sudo apt-get install -y --no-install-recommends apt-transport-https ca-certificates curl gnupg-agent software-properties-common

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y --no-install-recommends sublime-text

sudo dpkg --remove docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y --no-install-recommends docker-ce docker-ce-cli containerd.io
