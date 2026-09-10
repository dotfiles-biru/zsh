# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob
setopt HIST_IGNORE_ALL_DUPS
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

bindkey -e
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/biru/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"

# ==============================================================================
# Custom Functions
# ==============================================================================

# Automatically list directory contents upon changing directories
cd() {
  builtin cd "$@" && ls
}

# Load local secrets
[[ -f "$HOME/.config/secrets/env" ]] &&
    source "$HOME/.config/secrets/env"

# alias general
alias on-turbo="echo 0 | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo"
alias off-turbo="echo 1 | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo"
alias undervolt-1150="echo 1150 | sudo tee /sys/class/drm/card1/gt/gt0/rps_max_freq_mhz"
alias undervolt-900="echo 900 | sudo tee /sys/class/drm/card1/gt/gt0/rps_max_freq_mhz"

alias zshrc="nvim ~/dotfiles-biru/zsh/.zshrc && source ~/dotfiles-biru/zsh/.zshrc"

# ============================================= 
# eza
# =============================================

# basic
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

fastfetch 
