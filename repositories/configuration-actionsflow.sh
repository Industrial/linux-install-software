#!/usr/bin/env bash

. ./lib/packages.sh

echo "> repositories > configuration-actionsflow"

source_dir="${HOME}/Code/configuration/configuration-actionsflow"

if [ ! -d "${source_dir}" ]; then
  echo "> repositories > configuration-actionsflow > cloning"

  git clone "git@github.com:Industrial/configuration-actionsflow.git" "${source_dir}"
fi

cd "${HOME}/Code/configuration/configuration-actionsflow"

./bin/install
