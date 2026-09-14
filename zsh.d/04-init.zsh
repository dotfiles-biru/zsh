zstyle :compinstall filename '/home/biru/.zshrc'
autoload -Uz compinit
compinit

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
