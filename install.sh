#!/usr/bin/env bash

# Symlink setup
ln -sf ~/dotfiles-biru/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles-biru/zsh/zsh.d ~/.zsh.d
ln -sf ~/dotfiles-biru/zsh/zsh.local/.zsh.local ~/.zsh.local

# Compile bytecode
zcompile ~/dotfiles-biru/zsh/zsh.d/*.zsh

# Ensure antidote exists
if [ ! -d "$HOME/dotfiles-biru/zsh/antidote" ]; then
    git clone --depth=1 https://github.com/mattmc3/antidote.git "$HOME/dotfiles-biru/zsh/antidote"
fi
