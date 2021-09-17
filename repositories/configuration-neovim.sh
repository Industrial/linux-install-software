#!/usr/bin/env bash

. ./lib/packages.sh

echo "> repositories > configuration-neovim"

source_dir="${HOME}/Code/configuration/configuration-neovim"
target_dir="${HOME}/.config/nvim"

if [ ! -d "${source_dir}" ]; then
  echo "> repositories > configuration-neovim > cloning"

  git clone "git@github.com:Industrial/configuration-neovim.git" "${source_dir}"
fi

rm -rf "${target_dir}"

ln -s "${source_dir}" "${target_dir}"

cd "${source_dir}"
bin/install
