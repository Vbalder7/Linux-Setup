#!/bin/bash

sudo apt full-upgrade -y
sudo apt -y update && sudo apt upgrade -y
sudo apt-get auto-remove -y

clear
neofetch