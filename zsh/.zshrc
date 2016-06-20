export ZSH=~/.oh-my-zsh
ZSH_THEME="acastellano"

CASE_SENSITIVE="true"

HYPHEN_INSENSITIVE="true"

export UPDATE_ZSH_DAYS=13

COMPLETION_WAITING_DOTS="true"

plugins=(git colored-man colorize github jira vagrant virtualenv pip python zsh-syntax-highlighting)

alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias lh='ls -lah'
alias ltr='ls -lahrt'
alias cim='vim'
alias oho='php'
alias ks='ls'
alias car='cat'

source $ZSH/oh-my-zsh.sh
