#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Default PS1
#PS1='[\u@\h \W]\$ '

# Set up PS1 prompt
BLUE=`tput setf 1`
GREEN=`tput setf 2`
CYAN=`tput setf 3`
RED=`tput setf 4`
MAGENTA=`tput setf 5`
YELLOW=`tput setf 6`
WHITE=`tput setf 7`
#PS1='\[$GREEN\]\u@\h \[$WHITE\]\A \[$BLUE\]\w\[$GREEN\] \$\[$WHITE\] '
#PS1='\[$GREEN\]\u@\h \[$BLUE\]\w\[$GREEN\] \$\[$WHITE\] '
PS1='`a=$?;if [ $a -ne 0 ]; then a="  "$a; echo -ne "\[\e[s\e[1A\e[$((COLUMNS-2))G\e[31m\e[1;41m${a:(-3)}\e[u\]\[\e[0m\e[7m\e[2m\]"; fi`\[$GREEN\]\u@\h \[$BLUE\]\w\[$GREEN\] \$\[$WHITE\]\[\e[0m\] '


# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

## mkdir, and cd into it
mkcd () {
    mkdir -p "$*"
	cd "$*"
}

# Tab-completion
complete -cf sudo

# set completion-ignore-case on
bind `set completion-ignore-case on`

# set up editor
export EDITOR=/usr/bin/vim
export FCEDIT=/usr/bin/vim

# for awesome wm
export _JAVA_AWT_WM_NONREPARENTING="1"

# set CDPATH
#if [ -d "$HOME/Projects" ] ; then
#    export CDPATH=.:$HOME:$HOME/Projects
#fi
#export CDPATH=.:$HOME

#IBus input
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

#locale
#export LANG=zh_CN.UTF-8

#cd $HOME
