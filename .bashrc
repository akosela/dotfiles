# ~/.bashrc

#export PS1='\h \$ '
export PS1='\h`gitbranch` \$ '
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
alias cd..='cd ..'
alias ls='ls -F'
alias ll='ls -Fl'
alias l='ls -Fm'
alias h='history 20'
alias p='pwd'
alias ed='ed -G'
alias e='/usr/bin/ex'
alias c='cat'
alias bot='service'
alias sb='sudo bash'

# docker aliases
alias d='docker'
alias dps="docker ps --format 'table {{.Image}}\t{{.Names}}\t{{.Ports}}\t{{.Command}}\t{{.Status}}'"

# k8s aliases
alias k='kubectl'

# ansible aliases
alias a='ansible'
alias ac='ansible-config'
alias adoc='ansible-doc'
alias ag='ansible-galaxy'
alias ai='ansible-inventory'
alias ans='ansible -e "ansible_user=kosela"'
alias ap='ansible-playbook'
alias apc='ansible-playbook --check'
alias av='ansible-vault'

# git aliases
alias g='git'
alias gadd='git add'
alias gb='git branch -vv'
alias gba='git branch -avv'
alias gc='git checkout'
alias gcom='git commit -am'
alias gconf='git config -l'
alias gd='git diff'
alias gdiff='git diff'
alias gl="git log -n 10 --graph --pretty=format:'%C(yellow)%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset <%an>' --abbrev-commit"
alias glog="git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset <%an>' --abbrev-commit"
alias gmv='git mv'
alias gp='git pull'
alias gpull='git pull'
alias gpush='git push'
alias gr='git remote -v'
alias grm='git rm'
alias gs='git status'
alias gsh='git show'

# functions
s()
{
	/usr/bin/ssh $1 -t "exec /bin/bash --rcfile ~/.bashrc.ak"
}

gitbranch()
{
	git branch --show-current 2> /dev/null | sed 's/\(.*\)/ (\1)/'
}

# start up
figlet -f slant `hostname -s`
