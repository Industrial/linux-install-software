#!/usr/bin/env bash

echo "> install"

mkdir -p .tmp

./packages.sh
./shell.sh
./docker.sh
./development.sh
./media.sh
./fonts.sh
./repositories/index.sh
