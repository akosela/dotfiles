# ~/.bashrc
# -- akosela --

export PS1='\h \$ '
export PAGER=less
export GOPATH=/data/prog/go
export HISTSIZE=2000
export HISTCONTROL=ignoredups

# sane term
export TERM=vt100

# correct umask
umask 022

# vi-style editing
set -o vi

# aliases
alias ls='ls -F'
alias ll='ls -Fl'
alias l='ls -Fm'
alias h='history 20'
alias p='pwd'
alias gob='go build -ldflags "-s"'

# functions
s()
{
        /usr/bin/ssh $1 -t "exec /bin/bash --rcfile ~/.bashrc.ak"
}

# fortune
if [ -x /usr/games/fortune ] ; then /usr/games/fortune all ; fi
