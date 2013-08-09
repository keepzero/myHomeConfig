# some more ls aliases
alias ls='ls --color=auto'
alias l='ls -CF'
alias ll='ls --color=auto -liFh' 
alias la='ls --color=auto -AF'
alias l.='ls -d .* --color=auto'
alias sl="echo 'Maybe you mean: ls'; ls"

# some grep alias
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some usefull alias
alias df='df -h'
alias gdb='gdb -quiet'
alias mysql='mysql --prompt="(\u@\h)[\d]> "'
alias vi='vim'
alias scr="byobu-launcher"
alias ipconfig='ifconfig'
alias info="pinfo"
alias pman="pinfo -m"
#alias top='htop'
alias pso='ps -o pid,comm,pcpu,pmem,ni,pri,stat,ruser'
alias gcc='gcc -std=c99'
alias diff='colordiff'

# when use sudo will lost environment variables
# unless run sudo with the -E option
#alias sudo='sudo -E'

# for remote server not support screen-256color
#if [[ $TERM == 'screen-256color' ]]; then
#    alias ssh='TERM=screen ssh'
#elif [[ $TERM == 'rxvt-unicode' ]]; then
#    alias ssh='TERM=rxvt ssh'
#fi
