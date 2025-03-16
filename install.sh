#!/bin/bash

# Crear enlaces simbólicos
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global

# Crear directorios necesarios
mkdir -p ~/.config

# Enlazar configuración de Starship
ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml

# Copiar temas de Warp si existen
if [ -d ~/dotfiles/warp-themes ]; then
  mkdir -p ~/.warp/themes
  cp -r ~/dotfiles/warp-themes/* ~/.warp/themes/
fi

echo "Dotfiles instalados correctamente!"
