# alias general
alias zshrc="nvim ~/dotfiles-biru/zsh/.zshrc && source ~/dotfiles-biru/zsh/.zshrc"
alias ginit="git init && git add . && git commit -am 'init: Initialize project'"
alias ff="fastfetch"

alias cddfb="cd ~/dotfiles-biru"

alias c='cat'
alias b='bat'
alias lg='lazygit'
alias oc='opencode'
alias nv='nvim'

# eza aliases
alias l='eza'
alias ll='eza -lah'
alias la='eza -a'

# sorting
alias lt='eza -lah --sort=modified'
alias lS='eza -lah --sort=size'
alias lz='eza -lah --sort=extension'
alias lt='eza -lah --sort=modified --reverse'

# directory
alias lsd='eza -D'
alias lsr='eza -lR'

# tree
alias tree='eza --tree'
alias treea='eza --tree -a'
alias treel='eza --tree -l'

# git
alias lg='eza -l --git'
alias lga='eza -la --git'
