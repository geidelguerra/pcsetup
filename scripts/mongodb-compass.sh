if ! command_exists mongodb-compass; then
  echo installing mongodb-compass
  wget https://downloads.mongodb.com/compass/mongodb-compass_1.43.3_amd64.deb
  sudo dpkg -i mongodb-compass_1.43.3_amd64.deb
  sudo apt-get install -f mongodb-compass
  unlink mongodb-compass_1.43.3_amd64.deb
  echo mongodb-compass installed
fi