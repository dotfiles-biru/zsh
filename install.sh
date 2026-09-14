#!/usr/bin/env bash

# Symlink setup
ln -sf "$HOME/dotfiles-biru/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$HOME/dotfiles-biru/zsh/zsh.d" "$HOME/.zsh.d"
ln -sf "$HOME/dotfiles-biru/zsh/zsh.local/.zsh.local" "$HOME/.zsh.local"

# Compile bytecode
zcompile "$HOME/dotfiles-biru/zsh/zsh.d/"*.zsh

# Ensure antidote exists
if [ ! -d "$HOME/dotfiles-biru/zsh/antidote" ]; then
    git clone --depth=1 https://github.com/mattmc3/antidote.git "$HOME/dotfiles-biru/zsh/antidote"
fi
