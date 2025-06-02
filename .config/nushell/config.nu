# disable welcome message banner
$env.config.show_banner = false

nerdfetch

# apply pywal colors
(cat ~/.cache/wal/sequences)

# default editor
$env.config.buffer_editor = "nvim"

# vi mode
$env.config.edit_mode = "vi"

# prompt
$env.PROMPT_COMMAND = ""
$env.PROMPT_INDICATOR = ""
$env.PROMPT_INDICATOR_VI_NORMAL = ""
$env.PROMPT_INDICATOR_VI_INSERT = ""

## aliases
# general
alias nf = nerdfetch
alias pf = pfetch
alias ff = fastfetch
alias ls = exa -lah
alias v = nvim
alias y = yazi
alias vif = nvim (fzf)
alias gg = lazygit
alias tree = tre -e automatic

# git
alias gs = git status
alias ga = git add
alias gaa = git add .
alias gc = git commit
alias gcm = git commit -m
alias gp = git push
alias gpl = git pull
alias gi = git init
alias gcl = git clone

# branching
alias gb = git branch
alias gba = git branch -a
alias gco = git checkout
alias gcb = git checkout -b
alias gsw = git switch
alias gswc = git switch -c

# logs and diffs
alias gl = git log --oneline --graph --decorate
alias gd = git diff
alias gds = git diff --staged





# zoxide
source ~/.zoxide.nu
alias cd = z

# starship
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

$env.STARSHIP_SHELL = "nu"
def create_left_prompt [] {
    starship prompt --cmd-duration $env.CMD_DURATION_MS $'--status=($env.LAST_EXIT_CODE)'
}

# Use nushell functions to define your right and left prompt
$env.PROMPT_COMMAND = { || create_left_prompt }
$env.PROMPT_COMMAND_RIGHT = ""

# The prompt indicators are environmental variables that represent
# the state of the prompt
$env.PROMPT_INDICATOR = ""
# $env.PROMPT_INDICATOR_VI_INSERT = ":"
$env.PROMPT_INDICATOR_VI_NORMAL = "〉"
$env.PROMPT_MULTILINE_INDICATOR = "::: "
