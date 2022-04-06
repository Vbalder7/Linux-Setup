# History Settings

export HISTFILESIZE=2000
export HISTSIZE=2000
#export HISTIGNORE="cd*:false:history:htop:ls*:ll*:la:l:popd:pushd*:reset:top:true"
export HISTTIMEFORMAT="%Y-%m-%d %T "
export HISTFILE="~/.bash_history"
export HISTCONTROL=ignoreboth
shopt -s histappend

### PATH Section
PATH="$HOME/.cargo/bin${PATH:+:${PATH}}"
###

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='colorls -l --gs --sd --sf'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Aliases
hash colordiff &> /dev/null && alias diff='colordiff'
alias now='date +"%F-%T; %V week"'
alias my_ip='curl -s ifconfig.co/json | python3 -m json.tool'
# Extra options

export EDITOR="code"
export VISUAL="code"

#export GIT_BRANCH="$(echo "\033[33m(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))\033[0m")"
#export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\@ \[$(tput setaf 5)\][\[$(tput setaf 6)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 2)\]\h\[$(tput setaf 5)\]] \[$(tput setaf 6)\]\W ${GIT_BRANCH}\[$(tput setaf 7)\]\n\\$ \[$(tput sgr0)\]"
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\@ \[$(tput setaf 5)\][\[$(tput setaf 6)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 2)\]\h\[$(tput setaf 5)\]] \[$(tput setaf 6)\]\W\[$(tput setaf 7)\]\n\\$ \[$(tput sgr0)\]"


#source ~/.local/share/icons-in-terminal/icons_bash.sh
#. ~/.fancy-git/prompt.shexport PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#source $(dirname $(gem which colorls))/tab_complete.sh