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
export SYSTEMD_LESS=FRXMK

# ansible colors
export ANSIBLE_COLOR_OK='normal'
export ANSIBLE_COLOR_VERBOSE='normal'

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
alias calicoctl='calicoctl --allow-version-mismatch'
alias cd..='cd ..'
alias cl='clear'
alias d='docker'
alias dco='docker-compose --ansi=never'
alias diff='diff -u'
alias dotupdate='curl https://raw.githubusercontent.com/akosela/dotfiles/master/.bashrc > ~/.bashrc'
alias dps="docker ps --format 'table {{.Image}}\t{{.Names}}\t{{.Ports}}\t{{.Command}}\t{{.Status}}'"
alias e='ex'
alias f='find'
alias g='grep'
alias gdb='gdb -q -ex "set style address foreground none"'
alias gob='go build -ldflags="-s -w"'
alias gor='go run'
alias h='head'
alias hi='history 20'
alias i='ip -br a'
alias j='journalctl'
alias k='kubectl'
alias l='less'
alias ll='ls -Fl'
alias ls='ls -F'
alias n='netstat -pant'
alias p='ping'
alias pd='pwd'
alias s='ssh'
alias sb='sudo bash'
alias sudo='sudo '
alias t='tail'
alias to='top -bn1 | head -25'
alias u='uptime'
alias v='vi'
alias vim='vi -u ~/.exrc.white'
alias x='exit'
alias z='kill'

# systemctl aliases
alias daemon-reload='systemctl daemon-reload'
alias disable='systemctl disable'
alias enable='systemctl enable'
alias mask='systemctl mask'
alias reload='systemctl reload'
alias restart='systemctl restart'
alias start='systemctl start'
alias status='systemctl status'
alias stop='systemctl stop'
alias sts='systemctl status'
alias unmask='systemctl unmask'

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
alias rst='git reset'
alias revert='git revert'
alias show='git show'
alias st='git status'
alias stash='git stash'
alias submod='git submodule'
alias switch='git switch'
alias tag='git tag'

# k8s aliases
alias annotate='kubectl annotate'
alias api-resources='kubectl api-resources'
alias api-versions='kubectl api-versions'
alias apply='kubectl apply'
alias attach='kubectl attach'
alias auth='kubectl auth'
alias autoscale='kubectl autoscale'
alias cert='kubectl certificate'
alias cluster-info='kubectl cluster-info'
alias completion='kubectl completion'
alias config='kubectl config'
alias cordon='kubectl cordon'
alias create='kubectl create'
alias ctx='kubectx'
alias debug='kubectl debug'
alias del='kubectl delete'
alias delete='kubectl delete'
alias des='kubectl describe'
alias describe='kubectl describe'
alias drain='kubectl drain'
alias edit='kubectl edit'
alias events='kubectl alpha events'
alias exe='kubectl exec'
alias explain='kubectl explain'
alias expose='kubectl expose'
alias get='kubectl get'
alias get-all='kubectl get all,cm,secret,ing'
alias get-label='kubectl get $1 --show-labels'
alias get-taint='kubectl get node -o custom-columns=NAME:.metadata.name,TAINTS:.spec.taints'
alias k='kubectl'
alias kcp='kubectl cp'
alias kdiff='kubectl diff'
alias kpatch='kubectl patch'
alias kset='kubectl set'
alias ktail='kubectl tail'
alias ktop='kubectl top'
alias ktree='kubectl tree'
alias kustomize='kubectl kustomize'
alias kwait='kubectl wait'
alias label='kubectl label'
alias logs='kubectl logs'
alias ns='kubens'
alias options='kubectl options'
alias plugin='kubectl plugin'
alias port-forward='kubectl port-forward'
alias proxy='kubectl proxy'
alias replace='kubectl replace'
alias rollout='kubectl rollout'
alias run='kubectl run'
alias scale='kubectl scale'
alias taint='kubectl taint'
alias uncordon='kubectl uncordon'

# terraform aliases
alias console='terraform console'
alias destroy='terraform destroy'
alias force-unlock='terraform force-unlock'
alias format='terraform fmt'
alias graph='terraform graph'
alias import='terraform import'
alias login='terraform login'
alias logout='terraform logout'
alias output='terraform output'
alias plan='terraform plan'
alias providers='terraform providers'
alias refresh='terraform refresh'
alias state='terraform state'
alias tapply='terrraform apply'
alias tget='terraform get'
alias tf='terraform'
alias tinit='terraform init'
alias tshow='terraform show'
alias ttaint='terraform taint'
alias tuntaint='terraform untaint'
alias validate='terraform validate'
alias workspace='terraform workspace'
alias ws='terraform workspace'

gitbranch()
{
  git branch --show-current 2> /dev/null | sed 's/\(.*\)/ (\1)/'
}

up()
{
  git log --all --decorate --oneline | grep -B 1 $(git rev-parse --short HEAD) |
    awk '{print $1}' | head -1 | xargs -I {} git checkout {}
}

down()
{
  git log --all --decorate --oneline | grep -A 1 $(git rev-parse --short HEAD) |
    awk '{print $1}' | tail -1 | xargs -I {} git checkout {}
}
