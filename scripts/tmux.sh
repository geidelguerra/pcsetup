if ! command_exists tmux; then
  echo installing tmux
  sudo apt install -y tmux

  mkdir -p ~/.tmux/plugins

  if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo Installing plugin manager
    git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  fi
  echo tmux installed
fi

echo copying tmux config file
cp ./config/.tmux.conf ~/.tmux.conf
echo tmux setup done