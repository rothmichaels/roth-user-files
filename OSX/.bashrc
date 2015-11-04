# stop if non-interactive
[ -z "$PS1" ] && return

# history setup
shopt -s histappend
export PROMPT_COMMAND="history -a; history -n"
export HISTSIZE=2000
export HISTFILESIZE=2000
export HISTIGNORE="&:[ ]*:history*:hg*:exit"

export SVNEDITOR=emacsclient
export EDITOR=emacsclient

source ~/.aliases

# non-login prompt
export PS1="\[\e[0;34m\][\A]\[\e[0;00m\][\[\e[0;36m\]\W\[\e[0;00m\]]\u\$ "

# check for login-prompt
if shopt -q login_shell ; then
    export PS1="\[\e[0;34m\][\t]\[\e[0;00m\][\h:\[\e[0;36m\]\W\[\e[0;00m\]]\u\$ "
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
