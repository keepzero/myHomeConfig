# Fcitx
if [ `uname -s` = 'Linux' ]; then
    export GTK_IM_MODULE=fcitx
    export XMODIFIERS="@im=fcitx"
    export QT_IM_MODULE=fcitx
fi
