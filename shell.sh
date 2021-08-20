#!/usr/bin/env bash

echo "> shell"

echo "> shell > install packages"
yay -S --noconfirm \
  fish \
  neovim \
  vit \
  ripgrep \
  fzf \
  tmux \
  xsel \
  1> /dev/null

# TODO: change if required
echo "> shell > change shell to fish"
chsh -s $(which fish) \
  1> /dev/null
