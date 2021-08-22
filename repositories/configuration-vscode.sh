#!/usr/bin/env bash

. ./lib/packages.sh

echo "> repositories > configuration-vscode"

source_dir="${HOME}/Repositories/configuration-vscode"
target_dir="${HOME}/.config/Code"

if [ ! -d "${source_dir}" ]; then
  echo "> repositories > configuration-vscode > cloning"

  git clone "git@github.com:Industrial/configuration-vscode.git" "${source_dir}"
fi

mkdir -p "${target_dir}"

rm -rf "${target_dir}/User"

ln -s "${source_dir}/User" "${target_dir}/User"
