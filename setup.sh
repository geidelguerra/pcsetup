#!/usr/bin/bash
set -u
sudo apt install -y curl git zip unzip gnupg python3-pip python3-venv ca-certificates

source ./scripts/tmux.sh
source ./scripts/zsh.sh
source ./scripts/fzf.sh
source ./scripts/mongodb.sh
source ./scripts/docker.sh

# Cleanup
sudo apt autoremove -y