#!/usr/bin/env bash

STOW_DIRECTORY="${HOME}/.stow/config/stow"
SYSTEM_BINARY_DIRECTORY="/usr/local/bin"
INSTALLATION_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "${STOW_DIRECTORY}"
echo "${INSTALLATION_PATH}" > "${STOW_DIRECTORY}/installation.path"

sudo cp "${INSTALLATION_PATH}/bin/stow" "${SYSTEM_BINARY_DIRECTORY}/stow"

echo "Stow has been successfully installed. Try typing \`stow help\` to see the available options."
