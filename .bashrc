# ~/.bashrc
# -- akosela --

export PS1='\h \$ '
export PAGER=less
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/local/go/bin:/data/prog/go/bin
export GOPATH=/data/prog/go
export HISTSIZE=2000
export HISTCONTROL=ignoredups
export MANLESS=:

# sane term
export TERM=vt100

# correct umask
umask 022

# vi-style editing
set -o vi

# enable ^L to clear screen
bind -m vi-insert "\C-l":clear-screen

# aliases
alias ls='ls -F'
alias ll='ls -Fl'
alias l='less'
alias h='history 20'
alias p='pwd'
alias ed='ed -G'
alias e='/usr/bin/ex'
alias bot='service'
alias gob='go build -ldflags "-s"'
alias gor='go run'

# functions
s()
{
        /usr/bin/ssh $1 -t "exec /bin/bash --rcfile ~/.bashrc.ak"
}
