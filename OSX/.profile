# stop if non-interactive
[ -z "$PS1" ] && return
if [ 
echo ".profile sourced"


# if running bash                                                                                                                                                                       
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists                                                                                                                                                      
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
##
# Your previous /Users/roth/.profile file was backed up as /Users/roth/.profile.macports-saved_2011-10-14_at_17:04:46
##

# MacPorts Installer addition on 2011-10-14_at_17:04:46: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

