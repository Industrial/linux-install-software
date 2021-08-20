#!/usr/bin/env bash

echo "> install"

./packages.sh
./shell.sh
./docker.sh
./development.sh
./repositories/index.sh
