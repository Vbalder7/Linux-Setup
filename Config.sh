#!/bin/bash

#    SHELL
################################################################################################################

echo "Which shell would you prefer?
    1.) bash(default)
    2.) tbd
    3.) tbd

"

read -p ": " shell

if [ "$shell" == "1" ]; then

    cat dotfiles/.bashrc > ~/.bashrc
    cat dotfiles/.bash_aliases > ~/.bash_aliases
else
    echo "this part isnt done"
fi

# LS
################################################################################################################

echo "Would you like to use color ls (y/n)"

read -p ": " cls

if [ "$cls" == "y" ]; then

    source $(dirname $(gem which colorls))/tab_complete.sh
else
    echo "this part isnt done"

fi


# INSTALL TYPE
################################################################################################################

echo "Which install would you like
    1.) Normal
    2.) Developer
    3.) Minimal
"
read -p ": " install

if [ "$install" == "1" ]; then
    # standard update after new install
    sudo apt full-upgrade -y
    sudo apt -y update && sudo apt upgrade -y

    # Basic installs 
    sudo apt -y install neofetch htop vlc nano whois apt-utils

    # Install Snap
    sudo apt -y install libsquashfuse0 squashfuse fuse
    sudo apt -y install snapd
    clear

    # Install Firefox
    sudo apt -y install software-properties-common
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F
    sudo apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu focal main"
    sudo apt -y update && sudo apt -y full-upgrade
    sudo apt -y install firefox

elif [ "$install" == "2" ]; then
    # standard update after new install
    sudo apt full-upgrade -y
    sudo apt -y update && sudo apt upgrade -y

    # Preffered cli, media viewer, version control sys, and other cool stuff 
    sudo apt -y install git git-core git-gui gdebi-core neofetch htop vlc nano whois apt-utils zsh
    # Install Snap
    sudo apt -y install libsquashfuse0 squashfuse fuse
    sudo apt -y install snapd
    clear

    # Installing Java
    sudo apt -y install default-jre
    sudo apt -y install default-jdk
    sudo apt -y update && sudo apt -y full-upgrade
    clear

    # Installing LibreOffice
    sudo apt -y install libreoffice

    # Install Firefox
    sudo apt -y install software-properties-common
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F
    sudo apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu focal main"
    sudo apt -y update && sudo apt -y full-upgrade
    sudo apt -y install firefox

    # latest python3 version
    sudo apt -y install python3 python3-venv python3-pip
    clear

    # setup git
    git config --global user.name Vbalder7
    git config --global user.email toritoab01@gmail.com
    clear

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
else
    # standard update after new install
    sudo apt full-upgrade -y
    sudo apt -y update && sudo apt upgrade -y
fi
