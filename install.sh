#!/bin/bash
# Dotfiles installation script
# Creates symlinks from home directory to this repo

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR"

# Create config directories
mkdir -p ~/.config/shell
mkdir -p ~/.config

# Symlink shell configs
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_DIR/.bashrc" ~/.bashrc
ln -sf "$DOTFILES_DIR/.bash_profile" ~/.bash_profile
ln -sf "$DOTFILES_DIR/.config/shell/env.sh" ~/.config/shell/env.sh
ln -sf "$DOTFILES_DIR/.config/starship.toml" ~/.config/starship.toml

# Symlink git config
ln -sf "$DOTFILES_DIR/.gitconfig" ~/.gitconfig

echo "Done! Restart your shell or run: source ~/.zshrc"
