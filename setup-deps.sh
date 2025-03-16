#!/bin/bash

# Instalar Homebrew si no está instalado
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Instalar herramientas principales
brew install starship
brew install eza
brew install zsh-syntax-highlighting
brew install git-delta
brew install lazygit
brew install fzf
brew install direnv

# NPM global packages
npm install -g commitizen cz-conventional-changelog

# Crear configuración de commitizen
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc

# Otros paquetes útiles
brew install gh

echo "Dependencies installed!"
