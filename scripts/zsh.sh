sudo apt install -y zsh
chsh -s $(which zsh)

if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
    git clone --depth=1 $git_repo_url $plugin_dir
  fi
done

cp ./config/.zshrc ~/.zshrc