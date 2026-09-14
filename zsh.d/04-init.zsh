zstyle :compinstall filename '/home/biru/.zshrc'
autoload -Uz compinit
compinit

source <(fzf --zsh)
eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd --shell zsh)"

# Run once
fastfetch
