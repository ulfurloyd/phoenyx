# $env.PATH
use std/util "path add"
path add "~/.local/bin"
path add "~/go/bin"
path add "/home/wolf/.local/share/zinit/polaris/bin"
path add "/usr/local/sbin"
path add "/usr/local/bin"
path add "/usr/sbin"
path add "/usr/bin"
path add "/sbin"
path add "/bin"
path add "/usr/bin/site_perl"
path add "/usr/bin/vendor_perl"
path add "/usr/bin/core_perl"
path add "/usr/lib/rustup/bin"

# $env.*
load-env {
  "EDITOR": "nvim",
}

source ~/.zoxide.nu

$env.config.show_banner = false
$env.config.edit_mode = 'vi'

$env.config.keybindings = [
    {
        name: sesh_sessions
        modifier: alt
        keycode: char_s
        mode: [emacs vi_normal vi_insert]
        event: { send: ExecuteHostCommand, cmd: "sesh-sessions" }
    }
    {
      name: vi_mode_clear_input
      modifier: control
      keycode: char_u
      mode: [vi_insert vi_normal]
      event: { edit: CutFromStart }
    }
    {
      name: vi_mode_ctrl_f
      modifier: control
      keycode: char_f
      mode: [vi_insert vi_normal]
      event: { send: historyhintcomplete }
    }
]

# yazi function
def --env y [...args] {
	let tmp = (mktemp -t "yazi-cwd.XXXXXX")
	^yazi ...$args --cwd-file $tmp
	let cwd = (open $tmp)
	if $cwd != $env.PWD and ($cwd | path exists) {
		cd $cwd
	}
	rm -fp $tmp
}

def sesh-sessions [] {
    let session = (sesh list -t -c | fzf --height 40% --reverse --border-label ' sesh ' --border --prompt '⚡  ')
    if not ($session | is-empty) {
        sesh connect $session
    }
}

# aliases
alias cd = z
alias nf = nerdfetch
alias pf = pfetch
alias ff = fastfetch
alias v = nvim
def vif [] { nvim (fzf) }
alias gg = lazygit
alias tree = tre -e automatic
alias cz = chezmoi

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

$env.STARSHIP_SHELL = "nu"
def create_left_prompt [] {
    starship prompt --cmd-duration $env.CMD_DURATION_MS $'--status=($env.LAST_EXIT_CODE)'
}
$env.PROMPT_COMMAND = { || create_left_prompt }
$env.PROMPT_COMMAND_RIGHT = ""
$env.PROMPT_INDICATOR = ""
$env.PROMPT_INDICATOR_VI_INSERT = ""
$env.PROMPT_INDICATOR_VI_NORMAL = ": "
$env.PROMPT_MULTILINE_INDICATOR = "::: "

cat ~/.cache/terminal-sequences
