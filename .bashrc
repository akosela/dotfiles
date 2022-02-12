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
alias dattach='docker attach'
alias db='docker build'
alias ddf='docker system df'
alias ddiff='docker diff'
alias dexec='docker exec'
alias dh='docker history'
alias di='docker images'
alias dkill='docker kill'
alias dl='docker logs'
alias dnet='docker network'
alias dps="docker ps --format 'table {{.Image}}\t{{.Names}}\t{{.Ports}}\t{{.Command}}\t{{.Status}}'"
alias dpst='docker ps --no-trunc'
alias dpull='docker pull'
alias dpush='docker push'
alias drestart='docker restart'
alias drm='docker rm'
alias drmi='docker rmi'
alias drun='docker run'
alias dstart='docker start'
alias dstop='docker stop'
alias dtag='docker tag'
alias dtop='docker top'

# k8s aliases
alias k='kubectl'
alias ka='kubectl apply -f'
alias kconf='kubectl config'
alias kd='kubectl describe'
alias kdel='kubectl delete'
alias kdoc='kubectl explain'
alias kexec='kubectl exec'
alias kg='kubectl get'
alias kgn='kubectl get node'
alias kgp='kubectl get pod'
alias kgs='kubectl get svc'
alias kl='kubectl logs'
alias ks='kubectl scale'

# ansible aliases
alias a='ansible'
alias ac='ansible-config'
alias adoc='ansible-doc'
alias ag='ansible-galaxy'
alias ai='ansible-inventory'
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

# terraform aliases
alias t='terraform'
alias ta='terraform apply'
alias tp='terraform plan'
alias ts='terraform state'
alias tv='terraform validate'
alias tw='terraform workspace'
alias twl='terraform workspace list'

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
