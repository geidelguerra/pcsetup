if ! command_exists code; then
  echo installing vscode
  curl -L 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -o /tmp/vscode.deb
  sudo dpkg -i /tmp/vscode.deb
  sudo apt update && sudo apt install -y code
  unlink /tmp/vscode.deb
  echo vscode installed
fi