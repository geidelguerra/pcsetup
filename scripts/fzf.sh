if ! command_exists fzf; then
  echo installing fzf
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --completion --key-bindings --no-update-rc
  echo fzf installed
fi