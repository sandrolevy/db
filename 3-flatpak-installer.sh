#!/usr/bin/env bash

PROGRAMAS_PARA_INSTALAR=(

  com.spotify.Client
  com.github.micahflee.torbrowser-launcher
  com.github.tchx84.Flatseal

)

for nome_do_programa in ${PROGRAMAS_PARA_INSTALAR[@]}; do
  if ! dpkg -l | grep -q $nome_do_programa; then # Só instala se já não estiver instalado
    flatpak install flathub "$nome_do_programa" -y
  else
    echo "[INSTALADO] - $nome_do_programa"
  fi
done
