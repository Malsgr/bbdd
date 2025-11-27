#!/bin/bash

# Asegúrate de que el sistema está actualizado
sudo apt update && sudo apt upgrade -y

# Instalar Snap si no está instalado
sudo apt install -y snapd

# Instalar Visual Studio Code con snap
sudo snap install code --classic

# Instalar GitHub CLI
sudo apt install -y wget curl gpg
wget https://github.com/cli/cli/releases/latest/download/gh_2.26.1_linux_amd64.deb
sudo dpkg -i gh_2.26.1_linux_amd64.deb
sudo apt-get install -f  # Para solucionar dependencias faltantes

# Instalar JetBrains Mono Font
wget -q https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.fonts
fc-cache -fv  # Actualiza las fuentes

# Agregar repositorio de GitHub CLI
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" \
  | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

# Instalar herramientas útiles como Git y Curl si no están instalados
sudo apt install -y git curl

# (Opcional) Instalación de otras utilidades según necesidad
# sudo apt install -y tmux vim htop

# Asegúrate de que las fuentes están actualizadas
sudo fc-cache -fv

# Cambiar configuración de .bashrc (este paso es opcional y no se cambiará como lo pediste)
cp .bashrc ~  # Asumiendo que el archivo .bashrc existe en el directorio actual
