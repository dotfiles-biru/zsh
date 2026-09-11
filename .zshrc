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
eval "$(fnm env --use-on-cd --shell zsh)"

export PATH="$HOME/.local/bin:$PATH"

# ==============================================================================
# Custom Functions
# ==============================================================================

# Automatically list directory contents upon changing directories
cd() {
  builtin cd "$@" && eza
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

alias b='bat'

# ============================================= 
# eza
# =============================================

export EZA_COLORS="\
di=38;2;128;200;224;1:\
ex=38;2;144;200;160:\
fi=38;2;200;208;224:\
ln=38;2;176;160;216:\
or=38;2;184;96;104:\
pi=38;2;120;184;176:\
so=38;2;176;160;216:\
bd=38;2;212;184;120:\
cd=38;2;208;168;136:\
ur=38;2;212;184;120:\
uw=38;2;208;144;156:\
ux=38;2;144;200;160:\
ue=38;2;144;200;160:\
gr=38;2;212;184;120:\
gw=38;2;208;144;156:\
gx=38;2;144;200;160:\
tr=38;2;212;184;120:\
tw=38;2;208;144;156:\
tx=38;2;144;200;160:\
su=38;2;208;168;136:\
sf=38;2;208;168;136:\
xa=38;2;136;152;184:\
sn=38;2;200;208;224:\
sb=38;2;154;164;184:\
uu=38;2;212;184;120:\
un=38;2;154;164;184:\
gu=38;2;208;168;136:\
gn=38;2;154;164;184:\
da=38;2;136;152;184:\
in=38;2;88;100;120:\
lc=38;2;136;152;184:\
lp=38;2;176;160;216:\
ga=38;2;104;176;128:\
gm=38;2;104;152;184:\
gd=38;2;184;96;104:\
gv=38;2;176;160;216:\
gt=38;2;212;184;120:\
gi=38;2;88;100;120:\
gc=38;2;208;144;156:\
xx=38;2;88;100;120:\
hd=38;2;220;228;240;1"

# basic
alias ls='eza'
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
