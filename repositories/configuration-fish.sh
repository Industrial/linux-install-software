#!/usr/bin/env bash

. ./lib/packages.sh

echo "> repositories > configuration-fish"

source_dir="${HOME}/Code/configuration/configuration-fish"
target_dir="${HOME}/.config/fish"

if [ ! -d "${source_dir}" ]; then
  echo "> repositories > configuration-fish > cloning"

  git clone "git@github.com:Industrial/configuration-fish.git" "${source_dir}"
fi

rm -rf "${target_dir}"

ln -s "${source_dir}" "${target_dir}"
