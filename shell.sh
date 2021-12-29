#!/usr/bin/env bash

. ./lib/packages.sh

echo "> shell"

echo "> shell > install packages"
packages=(
  fish
  neovim
  vit
  ripgrep
  fzf
  tmux
  xsel
)
conditionally_install_packages $packages

# TODO: change if required
echo "> shell > change shell to fish"
if [ $(which fish) != "$SHELL" ]; then
  sudo usermod -s $(which fish) $USER
fi
