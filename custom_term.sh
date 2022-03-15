#!/bin/bash

curl -sS https://raw.githubusercontent.com/diogocavilha/fancy-git/master/install.sh | sh

fancygit --fonts-install

fancygit --suggested-global-git-config-apply

fancygit --color-scheme-batman

fancygit --separator-default

fancygit --disable-full-path

fancygit --disable-time

fancygit --enable-double-line

fancygit --set-user-name vic

fancygit --set-host-name deb