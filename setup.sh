#!/usr/bin/bash
set -u
sudo apt install -y curl git zip unzip gnupg python3-pip python3-venv ca-certificates jq

function command_exists() {
  command -v $1 > /dev/null 2>&1
}

source ./scripts/tmux.sh
source ./scripts/zsh.sh
source ./scripts/fzf.sh
source ./scripts/mongodb.sh
source ./scripts/docker.sh
source ./scripts/vscode.sh
source ./scripts/ngrok.sh

# # Cleanup
sudo apt autoremove -y