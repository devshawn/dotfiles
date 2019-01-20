#!/bin/sh

###############################################################################
# zsh & oh-my-zsh                                                             #
###############################################################################

# Install oh-my-zsh without user interaction
# Credit: https://goo.gl/uzeKuL
if test ! $(which zsh); then
    curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -o $DOTFILES/omz.sh
    sed -i ''  '/echo/d' $DOTFILES/omz.sh
    sed -i ''  '/env zsh/d' $DOTFILES/omz.sh
    sh $DOTFILES/omz.sh
    rm -rf $DOTFILES/omz.sh
fi

# Make Zsh the default shell environment
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi

brew install zsh-syntax-highlighting

# Theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

