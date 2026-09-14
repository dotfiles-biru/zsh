# Modular zsh config
for config in ~/.zsh.d/*.zsh; do
  [ -f "$config" ] && source "$config"
done
