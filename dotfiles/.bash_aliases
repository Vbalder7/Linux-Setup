if [ -e ~/.rbenv/shims/colorls ]; then
  alias l='colorls'
  alias la='colorls -Al --gs --sd --sf'
  alias ls='colorls -l --gs --sd --sf'
else
  alias ls='ls --color=auto'
  alias la='ls -lA --color=auto'

fi

alias bright='xrandr --output eDP-1 --brightness 1.2'
alias clr=clear
alias cpv='rsync -ah --info=progress2'
alias da='deactivate'
alias dim='xrandr --output eDP-1 --brightness 0.6'
alias histg="history | grep"
alias mkdir="mkdir -pv"
alias myip="curl http://ipecho.net/plain; echo"
alias pep8='autopep8 -ira ./'
alias va='source .venv/bin/activate'
alias ve='python -m venv ./.venv'
alias wget="wget -c"
# Functions

function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
 else
    for n in "$@"
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.cbt|*.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar) 
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.cbr|*.rar) unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.cbz|*.epub|*.zip) unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.apk|*.arj|*.cab|*.cb7|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.pkg|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *.cpio)      cpio -id < ./"$n"  ;;
            *.cba|*.ace) unace x ./"$n"      ;;
            *.zpaq)      zpaq x ./"$n"      ;;
            *.arc)       arc e ./"$n"       ;;
            *.cso)       ciso 0 ./"$n" ./"$n.iso" && \
                              extract $n.iso && \rm -f $n ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
fi
}

function update {

  echo "$(sudo apt full-upgrade -y)"
  echo "$(sudo apt update -y)"
  echo "$(sudo apt upgrade -y)"
  echo "$(clear)"

}

################################################################################################################
