sudo apt install -y tmux
mkdir -p ~/.tmux/plugins
if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
cp ./config/.tmux.conf ~/.tmux.conf