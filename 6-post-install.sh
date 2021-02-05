#!/usr/bin/env bash

## Instalando Complementos ZSH ##
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)" -y
sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"


## INSTALANDO DOOM EMACS ##

sudo apt install emacs code

git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install

# GTK THEMES #

gsettings set org.gnome.desktop.interface gtk-theme "dracula"
gsettings set org.gnome.desktop.wm.preferences theme "dracula"

# ICONS THEME #
sudo apt install numix-icon-theme-circle
gsettings set org.gnome.desktop.interface icon-theme 'Numix-Circle'

sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop
sudo apt update
sudo apt autoclean
sudo apt autoremove -y


