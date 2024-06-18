if ! command_exists zsh; then
  echo installing zsh
  sudo apt install -y zsh
  chsh -s $(which zsh)
  echo zsh installed
fi

if [ ! -d ~/.oh-my-zsh ]; then
  echo installing oh-my-zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo oh-my-zsh installed
fi

ZSH_PLUGINS=(
  zsh-autosuggestions
  zsh-syntax-highlighting
)

for plugin_name in $ZSH_PLUGINS
do
  git_repo_url=https://github.com/zsh-users/${plugin_name}.git
  plugin_dir=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/$plugin_name
  if [ ! -d $plugin_dir ]; then
    echo installing zsh plugin $plugin_name
    git clone --depth=1 $git_repo_url $plugin_dir
    echo sh plugin $plugin_name installed
  fi
done

echo copying zshrc config file
cp ./config/.zshrc ~/.zshrc
echo zsh setup done