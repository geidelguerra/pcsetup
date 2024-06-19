if ! command_exists qbittorrent; then
  echo installing qbittorrent
  sudo apt install -y qbittorrent
  echo qbittorrent installed
fi