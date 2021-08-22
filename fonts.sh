#!/usr/bin/env bash

. ./lib/packages.sh

echo "> fonts"

mkdir -p .tmp/fonts
cd .tmp/fonts

fonts=(
  ProFont
  FiraCode
)

# TODO: Get latest release
for font in ${fonts[@]}; do
  echo "> fonts > install > ${font}"

  file_name="${font}.zip"
  temp_file_name="${file_name}.tmp"
  target_dir="/usr/share/fonts/${font}"

  if [ ! -f "./${file_name}" ]; then
    echo "> fonts > install > ${font} > downloading"
    curl -L "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/${file_name}" > "./${temp_file_name}" 1> /dev/null && mv "${temp_file_name}" "${file_name}"
  fi

  if [ -d "${target_dir}" ]; then
    echo "> fonts > install > ${font} > installing"

    sudo rm -rf "${target_dir}"
    sudo unzip "${file_name}" -d "${target_dir}" 1> /dev/null
  fi
done

echo "> fonts > cache"
fc-cache -f

cd ..
