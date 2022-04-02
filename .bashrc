# ~/.bashrc

#export PS1='\h \$ '
export PS1='\h`gitbranch` \$ '
export PAGER=less
export PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin
export GIT_PAGER='less -+S'
export HISTSIZE=2000
export HISTCONTROL=ignoredups
export LANG=en_US.UTF-8
export LESS='-XFR'
export MANLESS=:

# sane term
#export TERM=vt100
export TERM=xterm

# correct umask
umask 022

# vi-style editing
set -o vi

# enable ^L to clear screen
bind -m vi-insert "\C-l":clear-screen

# aliases
alias a='ansible'
alias ai='ansible-inventory'
alias ap='ansible-playbook'
alias c='cat'
alias cd..='cd ..'
alias d='docker'
alias dotupdate='curl https://raw.githubusercontent.com/akosela/dotfiles/master/.bashrc > ~/.bashrc'
alias dps="docker ps --format 'table {{.Image}}\t{{.Names}}\t{{.Ports}}\t{{.Command}}\t{{.Status}}'"
alias e='ex'
alias gob='go build -ldflags="-s -w"'
alias gor='go run'
alias h='helm'
alias hi='history 20'
alias ipa='ip -br a'
alias l='ls -Fm'
alias ll='ls -Fl'
alias ls='ls -F'
alias p='pwd'
alias sb='sudo bash'
alias t='terraform'
alias tw='terraform workspace list'

# systemctl aliases
alias reload='systemctl reload'
alias restart='systemctl restart'
alias start='systemctl start'
alias status='systemctl status'
alias stop='systemctl stop'

# git aliases
alias add='git add'
alias bisect='git bisect'
alias blame='git blame'
alias br='git branch -vv'
alias branch='git branch -vv'
alias clean='git clean'
alias clone='git clone'
alias co='git checkout'
alias com='git commit -am'
alias commit='git commit -am'
alias conf='git config -l'
alias dif='git diff'
alias fetch='git fetch'
alias filter-branch='git filter-branch'
alias format-patch='git format-patch'
alias g='git'
alias gg='git grep'
alias ggrep='git grep'
alias glog="git log --graph --pretty=format:'%C(white bold)%h%Creset -%C(red bold)%d%Creset %s %C(cyan bold)(%cr)%Creset <%an>' --abbrev-commit"
alias init='git init'
alias lfs='git lfs'
alias log="git log -n 10 --graph --pretty=format:'%C(white bold)%h%Creset -%C(red bold)%d%Creset %s %C(cyan bold)(%cr)%Creset <%an>' --abbrev-commit"
alias merge='git merge'
alias move='git mv'
alias pick='git cherry-pick'
alias psh='git push'
alias pull='git pull'
alias push='git push'
alias rebase='git rebase'
alias reflog='git reflog'
alias remote='git remote -v'
alias remove='git rm'
alias reset='git reset'
alias revert='git revert'
alias show='git show'
alias st='git status'
alias stash='git stash'
alias submod='git submodule'
alias switch='git switch'
alias tag='git tag'

# k8s aliases
alias apply='kubectl apply -f'
alias create='kubectl create'
alias del='kubectl delete'
alias desc='kubectl describe'
alias exe='kubectl exec'
alias exp='kubectl explain'
alias explain='kubectl explain'
alias get='kubectl get'
alias k='kubectl'
alias logs='kubectl logs'
alias replace='kubectl replace'
alias scale='kubectl scale'

# functions
#s()
#{
#	/usr/bin/ssh $1 -t "exec /bin/bash --rcfile ~/.bashrc.ak"
#}

gitbranch()
{
	git branch --show-current 2> /dev/null | sed 's/\(.*\)/ (\1)/'
}
