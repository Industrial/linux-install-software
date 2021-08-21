#!/usr/bin/env bash

. ./lib/packages.sh

# TODO: Find a way to add settings to XFCE such that:
#       - Super + Ctrl + Shift + H
#         - movescreen -r left active
#       - Super + Ctrl + Shift + L
#         - movescreen -r right active

echo "> repositories > movescreen"

echo "> repositories > movescreen > install packages"
packages=(
  xorg-xwininfo
)
conditionally_install_packages $packages

TARGET_DIRECTORY="$HOME/Repositories/movescreen"

if [ -d $TARGET_DIRECTORY ]
then
  echo "> repositories > movescreen > skipping"
  exit
fi

echo "> repositories > movescreen > installing"

git clone \
  https://github.com/calandoa/movescreen \
  $TARGET_DIRECTORY \
  1> /dev/null

chmod +x $TARGET_DIRECTORY/movescreen.py
