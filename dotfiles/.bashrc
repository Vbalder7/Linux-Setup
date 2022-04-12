export HISTFILESIZE=2000
export HISTSIZE=2000
export HISTCONTROL="ignoreboth"
export HISTTIMEFORMAT="%Y-%m-%d %T "
export HISTFILE="~/.bash_history"
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Aliases
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../"
alias .....="cd ../../../../"
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias mkdir="mkdir -pv"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
hash colordiff &> /dev/null && alias diff='colordiff'
alias now='date +"%F-%T; %V week"'
alias my_ip='curl -s ifconfig.co/json | python3 -m json.tool'

# External Alias File
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Default Editor
export EDITOR="code"
export VISUAL="code"

# Prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 7)\]\@ \[$(tput setaf 1)\][\[$(tput setaf 6)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 2)\]\h\[$(tput setaf 1)\]]\[$(tput setaf 7)\]-\[$(tput setaf 5)\](\w)\[$(tput setaf 4)\]\n(\W) \[$(tput setaf 7)\]$ \[$(tput sgr0)\]"