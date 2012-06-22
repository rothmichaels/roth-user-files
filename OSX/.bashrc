# stop if non-interactive
[ -z "$PS1" ] && return

echo ".bashrc sourced"
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/lib/mysql5/bin:$PATH
# history setup
shopt -s histappend
export PROMPT_COMMAND="history -a; history -n"
export HISTSIZE=2000
export HISTFILESIZE=2000
export HISTIGNORE="&:[ ]*:history*:hg*:exit"

export SVNEDITOR=emacsclient
export EDITOR=emacsclient

source ~/.aliases
source ~/.bash_paths

# non-login prompt
export PS1="\[\e[0;35m\][\t]\[\e[0;00m\][\[\e[0;36m\]\W\[\e[0;00m\]]\u\$ "

# check for login-prompt
if shopt -q login_shell ; then
    export PS1="\[\e[0;35m\][\t]\[\e[0;00m\][\h:\[\e[0;36m\]\W\[\e[0;00m\]]\u\$ "
fi