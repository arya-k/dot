# TODO:
# Window snapping (yabai?)

# Aliases and exports
export EDITOR='nvim'
export CLICOLOR=1
export BAT_THEME="Nord"

PATH='/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin'
alias less='less -R'
alias grep='grep --color=auto'
alias cat="bat -p --paging=never"
alias ls=exa
alias vim=nvim

# Install Starship + Pazi
eval "$(starship init zsh)"
if command -v pazi &>/dev/null; then
  eval "$(pazi init zsh)" 
fi

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
setopt appendhistory

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --border'

# Dotfiles
alias dot='git --git-dir=$HOME/.dot/ --work-tree=$HOME'

