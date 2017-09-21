#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
command_not_found_handle () {
#    sl -a
    return 127
}


SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initializing new SSH agent..."
    touch $SSH_ENV
    chmod 600 "${SSH_ENV}"
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' >> "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
}

# Source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    kill -0 $SSH_AGENT_PID 2>/dev/null || {
        start_agent
    }
else
    start_agent
fi

alias ls='ls --color=auto'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias lh='ls -lah'
alias ltr='ls -lahrt'
alias ll='ls -la'
alias cim='vim'
alias oho='php'
alias ks='ls'
alias car='cat'

upup(){ DEEP=$1; [ -z "${DEEP}" ] && { DEEP=1; }; for i in $(seq 1 ${DEEP}); do cd ../; done; }
alias up='upup'

TERM=xterm-256color

source ~/.powerline.bash
