#!/usr/bin/env bash
# ~/dotfiles-biru/install.sh

# Get absolute path of script
DOTFILES_ZSH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Linking dotfiles..."
ln -sf "$DOTFILES_ZSH_DIR/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_ZSH_DIR/zsh.d" ~/.zsh.d
ln -sf "$DOTFILES_ZSH_DIR/zsh.local" ~/.zsh.local

echo "Compiling zsh configs..."
zsh -c "zcompile $DOTFILES_ZSH_DIR/zsh.d/*.zsh"

echo "Done! Restart shell."
