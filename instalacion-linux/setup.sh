#!/bin/bash

read -p "Introduce tu nombre para Git: " git_name
read -p "Introduce tu email para Git: " git_email

git config --global user.name "$git_name"
git config --global user.email "$git_email"

sudo atp snap install --clasic code
code --install-extension ritwickdey.liveserver
code --install-extension shd101wyy.markdown-preview-enhanced

sudo apt install -y fonts-firacode || true
wget -q https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBra>
unzip -o JetBrainsMono.zip -d ~/.local/share/fonts
fc-cache -f -v

curl -s https://ohmyposh.dev/install.sh | bash -s

sudo apt install -y wget || true
sudo apt install -y xclip || true
sudo apt install -y sqlite3 || true
sudo apt install -y python3 || true
sudo apt install -y jq || true

(type -p wget >/dev/null || (sudo apt update && sudo apt install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
	&& out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
	&& cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& sudo mkdir -p -m 755 /etc/apt/sources.list.d \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y

    cp .bashrc ~