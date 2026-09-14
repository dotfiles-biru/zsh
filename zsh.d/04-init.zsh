zstyle :compinstall filename '/home/biru/.zshrc'
autoload -Uz compinit
compinit

# Initialize Antidote
source ~/dotfiles-biru/zsh/antidote/antidote.zsh
antidote load ~/dotfiles-biru/zsh/plugins.txt

# FZF: Lazy load
_fzf_init() {
  source <(fzf --zsh)
  unfunction _fzf_init
}
# Trigger fzf on demand or initial command
[[ -f /usr/bin/fzf ]] && _fzf_init

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd --shell zsh)"

# Run once
fastfetch
