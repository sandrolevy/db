#!/usr/bin/env bash

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
URL_VIVALDI="https://downloads.vivaldi.com/stable/vivaldi-stable_3.5.2115.81-1_amd64.deb"
URL_DROPBOX=https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb

DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"

## Download e instalaçao de programas externos ##
mkdir "$DIRETORIO_DOWNLOADS"
wget -c "$URL_GOOGLE_CHROME"       -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_VIVALDI"             -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_DROPBOX"             -P "$DIRETORIO_DOWNLOADS"

## Instalando pacotes .deb baixados na sessão anterior ##
sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb

## Removendo Arquivos ##
sudo rm -r ~/Downlods/programas

