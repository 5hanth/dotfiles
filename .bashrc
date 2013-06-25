#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### PS1 ##
# PS1="\[\033[1;34m\]\@ \[\033[1;32m\]\w\[\033[0m\]\$ "
# PS1="\n ***** \@ :: \u on $(date +"%A, %d %B, %Y") :: \w ***** #\n *\n ******** > "
export draw=$(echo -en "\033%@";echo -en "\033(0")
export write=$(echo -en "\033(B")
export today=$(date +"%A, %d %B, %Y ")
PS1="$draw \n lqqqqq[$write \u :: $today $draw]qqqq[ \@ ]\n x\n$draw mqqqqq($write \w $draw)qqqq$write> "
# PS1="\n  /==== \u :: $today === [ \@ ] $ \n @\n  \====( \w )===> "

### vars ##
export GIT="https://github.com/5hanth"
export EDITOR="vim"
PATH=$PATH:$HOME/.rvm/bin:$HOME/.gem/ruby/1.9.1/bin/ # Add RVM to PATH for scripting

### alias ##
alias s='su -c "shutdown now"'
alias ls='ls --color=auto -sh'
alias r='pkill chromium && killall chromium && chromium &' # Chromium sucks with AwesomeWM
alias .='cd ~/'

### fun ##
alias matrix='echo -ne "\e[32m" ; while true ; do echo -ne "\e[$(($RANDOM % 2 + 1))m" ; tr -c "[:print:]" " " < /dev/urandom | dd count=1 bs=50 2> /dev/null ; done'

### functions ##
function cd() {
	builtin cd "$*" && ls
	}

function get() {
	wget -q "http://shanth.tk/$*"
	}


### git ##
git config --global user.email "sh4nth@gmail.com"
git config --global credential.helper 'cache --timeout=36000'
git config --global user.name "5hanth"
alias update="git push origin master"
alias ok="git commit -a"
alias add="git add ."

### shopt ##
shopt -s cdspell
shopt -s autocd
