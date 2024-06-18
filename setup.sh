#!/usr/bin/bash
set -u
sudo apt install -y curl git zip unzip gnupg python3-pip python3-venv
source ./tmux/tmux.sh
source ./zsh/zsh.sh
source ./fzf.sh
source ./mongodb.sh