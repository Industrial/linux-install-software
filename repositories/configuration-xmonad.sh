#!/usr/bin/env bash

. ./lib/packages.sh

echo "> repositories > configuration-xmonad"

source_dir="${HOME}/Code/configuration/configuration-xmonad"
target_dir="${HOME}/.xmonad"

if [ ! -d "${source_dir}" ]; then
  echo "> repositories > configuration-xmonad > cloning"

  git clone "git@github.com:Industrial/configuration-xmonad.git" "${source_dir}"
fi

rm -f "${target_dir}"
mkdir "${target_dir}"

ln -s "${source_dir}" "${target_dir}"
