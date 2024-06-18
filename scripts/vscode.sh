curl -L 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -o vscode.deb
sudo dpkg -i vscode.deb
sudo apt update && sudo apt install -y code
unlink vscode.deb