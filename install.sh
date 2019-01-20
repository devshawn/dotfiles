#!/bin/sh

# Let's do this
echo "Setting up mac..."

DOTFILES=$(pwd)

# Get sudo permissions
sudo -v

# Installers
source ~/.dotfiles/zsh/install.sh
source ~/.dotfiles/mac/install.sh

# Symlinks
source ~/.dotfiles/system/.symlinks