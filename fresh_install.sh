#!/bin/bash

# standard update after new install
sudo apt-get update && sudo apt-get full-upgrade

# Preffered cli, media viewer, version control sys, and other cool stuff 
sudo apt-get -y install git git-core git-gui gdebi-core neofetch htop gnome-terminal vlc nano whois 

# latest python3 version
sudo apt-get -y install python3 python3-venv python3-pip

# setup git
git config --global user.name Vbalder7
git config --global user.email toritoab01@gmail.com

# Git Desktop
#To get updated version visit https://github.com/shiftkey/desktop/releases/latest
#sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.9.9-linux2/GitHubDesktop-linux-2.9.9-linux2.deb
#sudo gdebi GitHubDesktop-linux-2.9.9-linux2.deb
#sudo rm -rf GitHubDesktop-linux-2.9.9-linux2.deb
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftkey-desktop.list'
sudo apt -y update
sudo apt -y install github-desktop

#VS Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# View git config
clear
git config --list
