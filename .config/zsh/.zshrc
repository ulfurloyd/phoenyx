# Set the directory we want to store zinit and plugins in
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Pywal
(cat ~/.cache/wal/sequences &)

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

###############
### Aliases ###
###############

# General
alias cd='z'
alias nf='nerdfetch'
alias pf='pfetch'
alias ff='fastfetch'
alias ls='exa -lah'
alias v='nvim'
alias y='yazi'
alias vif='nvim $(fzf)'
alias gg='lazygit'
alias tree='tre -e automatic'

# git
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gi='git init'
alias gcl='git clone'

# branching
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gsw='git switch'
alias gswc='git switch -c'

# logs and diffs
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'
alias gds='git diff --staged'

######################
### Pre-Shell Init ###
######################

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Starship prompt
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"
