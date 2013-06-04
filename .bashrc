#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### PS1 ##
# PS1='\n[\@ :: \u@\h :: \w]\n$ '
# PS1="\[\033[1;34m\]\@ \[\033[1;32m\]\w\[\033[0m\]\$ "
# PS1='[\u@\h \W]\$ '
PS1="\n//=== \@ :: \u on $(date +"%A, %d %B, %Y") :: \w === #\n||\n\=== > "

### vars ##
export GIT="https://github.com/5hanth"
export EDITOR="vim"
PATH=$PATH:$HOME/.rvm/bin:$HOME/.gem/ruby/1.9.1/bin/ # Add RVM to PATH for scripting

### alias ##
alias s='su -c "shutdown now"'
alias ls='ls --color=auto'
alias ls='ls -sh'
alias r='pkill chromium && killall chromium && chromium &' # Chromium sucks with AwesomeWM

### git ##
git config --global user.email "sh4nth@gmail.com"
git config --global credential.helper 'cache --timeout=36000'
git config --global user.name "5hanth"

