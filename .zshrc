# Aliases and exports
export EDITOR="nvim"
export CLICOLOR=1
export BAT_THEME="Dracula"

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

alias less="less -R"
alias grep="grep --color=auto"
alias cat="bat -p --paging=never"
alias ls=exa
alias vim=nvim

# ssh
alias optim="multipass shell optim" # for perf-engineering course
alias feral="~/.ssh/feral.expect" # feral-hosting has no ssh keys :(

# Compinit
autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
    compinit;
else
    compinit -C;
fi;

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt histignorealldups

# Starship + zoxide
eval "$(starship init zsh)"

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--height 40% --border"

pf() { # preview files in current directory
  fzf \
    --height 100% \
    --preview 'bat --style=numbers --color=always --line-range :1000 {}' \
    --preview-window right,75% \
    $1;
}

# Dotfiles
alias dot="git --git-dir=$HOME/.dot/ --work-tree=$HOME"

# Kitty
if [[ "$TERM" == "xterm-kitty" ]]; then
  alias s="kitty +kitten ssh";
fi

# Golang
export GOPATH=~/.cache/go
