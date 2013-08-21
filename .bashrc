#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### PS1 ##
# export today=$(date +"%A, %d %B, %Y ")
PS1="\n \w  \@ \n\n"
### vars ##
export GIT="https://github.com/5hanth"
export EDITOR="vim"
PATH=$PATH:$HOME/.rvm/bin:$HOME/.gem/ruby/1.9.1/bin/ # Add RVM to PATH for scripting

### alias ##
alias s='su -c "shutdown now"'
alias r='su -c "systemctl reboot"'
alias l='ls --color=auto -Sssh'
alias ll='ls --color=auto -Sssha'
alias .='cd ~/'
alias q='screen'
alias x='exit'
alias c='xinit /usr/bin/chromium -- :1'

### fun ##
alias matrix='echo -ne "\e[32m" ; while true ; do echo -ne "\e[$(($RANDOM % 2 + 1))m" ; tr -c "[:print:]" " " < /dev/urandom | dd count=1 bs=50 2> /dev/null ; done'

### functions ##
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
