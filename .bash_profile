#
# ~/.bash_profile
#

# set Android PATH
ANDROID=$HOME/develop/android-sdk-linux/platform-tools/

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH:$ANDROID"
    #PATH="$HOME/bin:$PATH:$ANDROID"
fi

# load .bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'

# Java hack for awesome
export _JAVA_AWT_WM_NONREPARENTING="1"
