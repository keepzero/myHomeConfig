#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Common bash env
if [ -f ~/.bash_common ]; then
    . ~/.bash_common
fi

# Useful bash functions
if [ -f ~/.bash_funcs ]; then
    . ~/.bash_funcs
fi

#IBus input
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus

#locale
#export LANG=zh_CN.UTF-8

#cd $HOME
