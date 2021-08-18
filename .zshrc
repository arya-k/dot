# Aliases and exports
export EDITOR="nvim"
export CLICOLOR=1
export BAT_THEME="Nord"

PATH="/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin"
alias less="less -R"
alias grep="grep --color=auto"
alias cat="bat -p --paging=never"
alias ls=exa
alias vim=nvim

# Compinit
autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
    compinit;
else
    compinit -C;
fi;

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY

# Starship + Pazi
eval "$(starship init zsh)"
eval "$(zoxide init zsh)" 

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--height 40% --border"


# Dotfiles
alias dot="git --git-dir=$HOME/.dot/ --work-tree=$HOME"

# Bonsai!
cbonsai -p
