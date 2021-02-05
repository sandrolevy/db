#!/usr/bin/env bash

PROGRAMAS_PARA_INSTALAR=(

  # TERMINAL-APPS
  tree
  alacritty
  cmus
  htop
  fastboot
  fzf
  fd-find
  zsh
  exa
  pulseeffects
  
  # MEDIA
  qbittorrent
  kodi
  vlc
  sxiv
  
  # TEXT-EDITORS
  vim
  emacs
  code
  
  # UTILS
  vifm
  virt-manager
  scrcpy
  stacer
  gparted
  anki
  keepassxc
  flameshot
  
  # DEV
  python
  python3-pip
  pipenv
  
  # SYSTEM
  gnome-tweaks
  fonts-firacode
  numix-icon-theme-circle
  gnome-shell-pomodoro
  rofi
)


# ----------------------------- PRE-INSTALL ----------------------------- #

## Adicionando/Confirmando arquitetura de 32 bits ##

sudo dpkg --add-architecture i386

## Atualizando o repositório ##

sudo apt update -y

# -------------------- INSTALING APPS ----------------------------#

for nome_do_programa in ${PROGRAMAS_PARA_INSTALAR[@]}; do
  if ! dpkg -l | grep -q $nome_do_programa; then # Só instala se já não estiver instalado
    apt install "$nome_do_programa" -y
  else
    echo "[INSTALADO] - $nome_do_programa"
  fi
done
