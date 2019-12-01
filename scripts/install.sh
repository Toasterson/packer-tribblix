#!/usr/bin/env bash

# stop on errors
set -eu

FIRST_DISK=$(diskinfo -Hp | awk '{print $2}')

echo "==> Installing system onto ${FIRST_DISK}"
./live_install.sh -G "${FIRST_DISK}"