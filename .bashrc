#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export GIT="https://github.com/5hanth"
export EDITOR="vim"
PATH=$PATH:$HOME/.rvm/bin:$HOME/.gem/ruby/1.9.1/bin/ # Add RVM to PATH for scripting

alias s='su -c "shutdown now"'

alias ls='ls -sh'

git config --global user.email "sh4nth@gmail.com"

git config --global credential.helper 'cache --timeout=36000'

git config --global user.name "5hanth"

