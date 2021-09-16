#!/usr/bin/env bash

. ./lib/packages.sh

echo "> repositories > configuration-tmux"

source_dir="${HOME}/Code/configuration/configuration-tmux"
target_dir="${HOME}/.tmux"

if [ ! -d "${source_dir}" ]; then
  echo "> repositories > configuration-tmux > cloning"

  git clone "git@github.com:Industrial/configuration-tmux.git" "${source_dir}"
fi

rm -rf "${HOME}/.tmux"
ln -s "${source_dir}/.tmux" "${HOME}/.tmux"

rm -rf "${HOME}/.tmux.conf"
ln -s "${source_dir}/.tmux.conf" "${HOME}/.tmux.conf"

rm -rf "${HOME}/.tmuxline"
ln -s "${source_dir}/.tmuxline" "${HOME}/.tmuxline"
