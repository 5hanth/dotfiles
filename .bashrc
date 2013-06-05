#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### PS1 ##
# PS1="\[\033[1;34m\]\@ \[\033[1;32m\]\w\[\033[0m\]\$ "
# PS1="\n ***** \@ :: \u on $(date +"%A, %d %B, %Y") :: \w ***** #\n *\n ******** > "
export today=$(date +"%A, %d %B, %Y ")
export remaining=$(( (18-$(date +%d))*5 )) # exam day in the month
# PS1="\n  /==== \u :: $today === [ \@ ] $ \n @\n  \====( \w )===> " # when Exams are far away :P
PS1="\n  /==== \u :: $today :: only $remaining hours left to prepare for semester exam === [ \@ ] $ \n @\n  \====( \w )===> " # when Exams ahead !

### vars ##
export GIT="https://github.com/5hanth"
export EDITOR="vim"
PATH=$PATH:$HOME/.rvm/bin:$HOME/.gem/ruby/1.9.1/bin/ # Add RVM to PATH for scripting

### alias ##
alias s='su -c "shutdown now"'
alias ls='ls --color=auto -sh'
alias r='pkill chromium && killall chromium && chromium &' # Chromium sucks with AwesomeWM
alias .='cd ~/'

### functions ##
function cd() {
	builtin cd "$*" && ls
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
