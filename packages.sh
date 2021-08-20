#!/usr/bin/env bash

echo "> packages"

echo "> packages > update all"
sudo pacman -Syyu --noconfirm \
  1> /dev/null

echo "> packages > uninstall unneeded"
if [ -f /usr/bin/catfish ]
then
  sudo pacman -Rs --noconfirm catfish \
    1> /dev/null
fi

# TODO: when required
echo "> packages > install required"
sudo pacman -S --noconfirm \
  binutils \
  base-devel \
  net-tools \
  fakeroot \
  git \
  yay \
  1> /dev/null
