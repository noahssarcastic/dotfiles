#!/usr/bin/env bash

apt-get update

apt-get install -y zsh
chsh -s $(which zsh)

apt-get install -y wget git
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh 
sh install.sh --unattended
rm install.sh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
