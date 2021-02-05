#!/usr/bin/env bash
# ------------------------- INSTALANDO GNOME-EXTENSIONS -------------------------- #
## Instalando Depêndencias ## 
sudo apt install -y curl wget jq unzip

## Requisitando Versão Autalizada do Script ##
rm -f ./install-gnome-extensions.sh; wget -N -q "https://raw.githubusercontent.com/cyfrost/install-gnome-extensions/master/install-gnome-extensions.sh" -O ./install-gnome-extensions.sh && chmod +x install-gnome-extensions.sh && ./install-gnome-extensions.sh

## Instalando as Extensões ##
./install-gnome-extensions.sh --enable --file extensions.txt

## Removendo Script de Instalação ##
rm install-gnome-extensions.sh

## Reiniciando o Gnome-Shell ##
killall -1 gnome-shell
