#!/usr/bin/env bash

echo "> install"

echo "> install > sudo rights"
sudo echo "> install > sudo rights > acquired"

mkdir -p .tmp

./time.sh
./packages.sh
./shell.sh
./docker.sh
./development.sh
./media.sh
./fonts.sh
./repositories/index.sh
