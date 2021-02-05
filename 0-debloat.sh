#!/usr/bin/env bash
packpages_to_remove=(
  gnome-contacts
  firefox
  gnome-calendar
  geary
  libreoffice*
  seahors
  yelp
  totem
  totem-plugins
  simple-scan
  eog
  seahorse
)

for packpage in ${packpages_to_remove[@]}; do
  if ! dpkg -l | grep -q $packpage; then
    echo "[Can't find] - $packpage"
  else
    sudo apt remove --purge "$packpage" -y
  fi
done

sudo apt autoremove -y
