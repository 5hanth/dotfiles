#
# ~/.bashrc
#

# If not running interactively, don't do anything
 [[ $- != *i* ]] && return

### vars ##
export PS1="\n \w  \@ \n\n"
export GIT="https://github.com/5hanth"
export EDITOR="vim"
export PATH=$HOME/.cabal/bin:$PATH 
export LANG="en_US.utf-8"
export LEIN_ROOT="true"


set -o vi

### alias ##
alias s='su -c "shutdown now"'
alias sp='xsel  | espeak  -ven-us+f3 -s 175' # speak X selection
alias r='su -c "systemctl reboot"'
alias l='ls --color=auto -Sssh'
alias ll='ls --color=auto -Sssha'
alias .='cd ~/'
alias q='screen'
alias x='exit'
alias v='vim'
alias vs='vim -S Session.vim'
alias a='fg'
alias j='jobs'

## GHC ##
alias ghc-sandbox="ghc -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"
alias ghci-sandbox="ghci -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"
alias runhaskell-sandbox="runhaskell -no-user-package-db -package-db .cabal-sandbox/*-packages.conf.d"

### multimedia ##
function movie() { su -c "mplayer -fs -quiet -zoom -x 1366 -y 768 -vo fbdev2 '$1'"; }
alias record='su -c "ffmpeg -f fbdev -i /dev/fb0 -r 24 streamcast.avi"'
alias rec='recordmydesktop --no-sound --fps 15 --on-the-fly-encoding --stop-shortcut Control+s &'


### fun ##
alias matrix='echo -ne "\e[32m" ; while true ; do echo -ne "\e[$(($RANDOM % 2 + 1))m" ; tr -c "[:print:]" " " < /dev/urandom | dd count=1 bs=50 2> /dev/null ; done'

### functions ##
function suc { su -c "$*"; }
function cd() {
	builtin cd "$*" && ls
	}
function get() {
	wget -q "http://shanth.tk/$*"
	}
function ps1() {
if [ $# -gt 0 ];then
export draw=$(echo -en "\033%@";echo -en "\033(0")
export write=$(echo -en "\033(B")
PS1="$draw \n lqqqqq[$write \u $draw]qqqq[ \@ ]\n x\n$draw mqqqqq($write \w $draw)qqqq$write> "
else
PS1="\n \w  \@ \n\n"
fi
	}

### git ##
git config --global user.email "sh4nth@gmail.com"
git config --global credential.helper 'cache --timeout=36000'
git config --global user.name "5hanth"
alias update="git push origin master"
alias ok="git commit -a"

### shopt ##
shopt -s cdspell
shopt -s autocd
