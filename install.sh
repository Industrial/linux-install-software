#!/usr/bin/env bash

echo "> install"

mkdir -p .tmp

./time.sh
./packages.sh
./shell.sh
./docker.sh
./development.sh
./media.sh
./fonts.sh
./repositories/index.sh
