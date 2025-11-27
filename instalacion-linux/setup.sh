#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install -y snapd

sudo snap install code --classic

sudo apt install -y wget curl gpg
wget https://github.com/cli/cli/releases/latest/download/gh_2.26.1_linux_amd64.deb
sudo dpkg -i gh_2.26.1_linux_amd64.deb
sudo apt-get install -f  

curl -s https://ohmyposh.dev/install.sh | bash -s

sudo apt install -y wget || true
sudo apt install -y xclip || true
sudo apt install -y sqlite3 || true
sudo apt install -y python3 || true
sudo apt install -y jq || true

sudo apt install -y unzip

wget -q https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache -fv  

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" \
  | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

sudo apt install -y git curl

fc-cache -fv

cp .bashrc ~  
