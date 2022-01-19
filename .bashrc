# ~/.bashrc
# -- akosela --

export PS1='\h \$ '
export PAGER=less
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
export GOPATH=/data/prog/go
export GIT_PAGER='less -+S'
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
alias h='history 20'
alias p='pwd'
alias ed='ed -G'
alias e='/usr/bin/ex'
alias c='cat'
alias bot='service'
alias gob='go build -ldflags "-s"'
alias gor='go run'
alias systemctl='systemctl --no-pager -l'
alias journalctl='journalctl --no-pager -l'
alias d='docker'
alias k='kubectl'
alias dps="docker ps --format 'table {{.Image}}\t{{.Names}}\t{{.Ports}}\t{{.Command}}\t{{.Status}}'"

# functions
s()
{
        /usr/bin/ssh $1 -t "exec /bin/bash --rcfile ~/.bashrc.ak"
}

git()
{
        local cmd=$1; shift
        if command -v "git_$cmd" >/dev/null 2>&1; then
                "git_$cmd" "$@"
        else
                command git "$cmd" "$@"
        fi
}

git_l()
{
        command git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset <%an>' --abbrev-commit --branches "$@"
}

git_st()
{
        command git status "$@"
}

git_co()
{
        command git checkout "$@"
}
