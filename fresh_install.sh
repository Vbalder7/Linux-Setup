#!/bin/bash

# standard update after new install
sudo apt -y full-upgrade
sudo apt -y update && sudo apt -y upgrade

# Preffered cli, media viewer, version control sys, and other cool stuff 
sudo apt -y install git git-core git-gui gdebi-core neofetch htop vlc nano whois apt-utils zsh

# Install Snap
#sudo apt -y install libsquashfuse0 squashfuse fuse
#sudo apt -y install snapd
#clear

# Installing Java
#sudo apt -y install default-jre
#sudo apt -y install default-jdk
#sudo apt -y update && sudo apt -y full-upgrade
#clear

# Installing LibreOffice
#sudo apt -y install libreoffice

# Install Firefox
#sudo apt -y install software-properties-common
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F
#sudo apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu focal main"
#sudo apt -y update && sudo apt -y full-upgrade
#sudo apt -y install firefox

# latest python3 version
sudo apt -y install python3 python3-venv python3-pip
clear

# setup git
git config --global user.name Vbalder7
git config --global user.email toritoab01@gmail.com
clear

# Git Desktop
#To get updated version visit https://github.com/shiftkey/desktop/releases/latest
#sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.9.9-linux2/GitHubDesktop-linux-2.9.9-linux2.deb
#sudo gdebi GitHubDesktop-linux-2.9.9-linux2.deb
#sudo rm -rf GitHubDesktop-linux-2.9.9-linux2.deb
#wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null
#sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftkey-desktop.list'
#sudo apt -y update
#sudo apt -y install github-desktop
#clear

#VS Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt -y install apt-transport-https
sudo apt update
sudo apt -y install code
clear

# View git config
clear
git config --list
