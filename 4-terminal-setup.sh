#!/usr/bin/env bash

## INSTALLING DRACULA THEMES ##

# Terminal #
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh
cd ~
rm -r ./gnome-terminal

# Instalando bash Prompt #
curl -fsSL https://starship.rs/install.sh | bash

# INSTALANDO OH-MY-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

