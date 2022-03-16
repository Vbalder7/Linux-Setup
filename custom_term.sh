#!/bin/bash

curl -sS https://raw.githubusercontent.com/diogocavilha/fancy-git/master/install.sh | sh

fancygit --fonts-install

git config --global --replace-all color.ui true
git config --global --replace-all color.diff.meta "yellow bold"
git config --global --replace-all color.diff.old "red bold"
git config --global --replace-all color.diff.new "green bold"
git config --global --replace-all color.status.added "green bold"
git config --global --replace-all color.status.changed "yellow"
git config --global --replace-all color.status.untracked "cyan"