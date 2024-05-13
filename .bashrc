# ~/.bashrc

if [ -z "$PS1" ]; then
  shopt -s expand_aliases
fi

export PS1='\h `gitbranch`\$ '
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
alias ?='echo'
alias a='ansible'
alias ai='ansible-inventory'
alias ap='ansible-playbook'
#alias b='bat -fp --theme=DarkNeon'
alias b='bat -fp --theme=Coldark-Cold'
alias c='cat'
alias calicoctl='calicoctl --allow-version-mismatch'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cl='clear'
alias d='docker'
alias dco='docker-compose --ansi=never'
alias diff='diff --color=always -u'
alias dotupdate='curl https://raw.githubusercontent.com/akosela/dotfiles/master/.bashrc > ~/.bashrc'
alias dps="docker ps --format 'table {{.Image}}\t{{.Names}}\t{{.Ports}}\t{{.Command}}\t{{.Status}}'"
alias e='ex'
alias f='find'
alias g='grep'
alias gc='grep --color'
alias gdb='gdb -q -ex "set sty addr foreground none" -ex "set disassembly int"'
alias gob='go build -ldflags="-s -w"'
alias gor='go run'
alias h='head'
alias h1='head -1'
alias h2='head -2'
alias h5='head -5'
alias hi='history 20'
alias htop='htop -C'
alias i='ip -br a'
alias il='ip -br l'
alias ir='ip r'
alias j='journalctl'
alias k='kill'
alias l='less'
alias ll='ls -Fl'
alias llh='ls -Flh'
alias ls='ls -F'
alias lsd="ls -d */ | sed 's/\/$//g' | column -c80"
alias n='netstat -pant'
alias pd='pwd'
alias print='echo'
alias s='ssh'
alias sb='sudo bash'
alias sudo='sudo '
alias t='tail'
alias t1='tail -1'
alias t2='tail -2'
alias t5='tail -5'
alias to='top -bn1 | head -25'
alias u='uptime'
alias un='uname'
alias v='vi'
alias vim='vi -u ~/.exrc.white'
alias x='exit'
alias y='yes'
alias z='kill'
alias zc='zcat'
alias zg='zgrep'

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
#alias glog="git log --graph --pretty=format:'%C(white bold)%h%Creset -%C(red bold)%d%Creset %s %C(cyan bold)(%cr)%Creset <%an>' --abbrev-commit"
alias glog="git log --graph --pretty=format:'%C(blue)%h%Creset -%C(red)%d%Creset %s %C(blue)(%cr)%Creset <%an>' --abbrev-commit"
alias init='git init'
alias lfs='git lfs'
#alias log="git log -n 10 --graph --pretty=format:'%C(white bold)%h%Creset -%C(red bold)%d%Creset %s %C(cyan bold)(%cr)%Creset <%an>' --abbrev-commit"
alias log="git log -n 10 --graph --pretty=format:'%C(blue)%h%Creset -%C(red)%d%Creset %s %C(blue)(%cr)%Creset <%an>' --abbrev-commit"
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
alias ann='kubectl annotate'
alias api-resources='kubectl api-resources'
alias api-versions='kubectl api-versions'
alias apply='kubectl apply'
alias app='kubectl apply'
alias attach='kubectl attach'
alias att='kubectl attach'
alias auth='kubectl auth'
alias autoscale='kubectl autoscale'
alias cert='kubectl certificate'
alias cluster-info='kubectl cluster-info'
alias completion='kubectl completion'
alias config='kubectl config'
alias cordon='kubectl cordon'
alias create='kubectl create'
alias cre='kubectl create'
alias ctl='kubectx'
alias ct-='kubectl -'
alias debug='kubectl debug'
alias deb='kubectl debug'
alias del='kubectl delete'
alias delete='kubectl delete'
alias des='kubectl describe'
alias describe='kubectl describe'
alias dp='kubectl describe pod'
alias dq='kubectl describe quota'
alias drain='kubectl drain'
alias edit='kubectl edit'
alias event='kubectl events'
alias exe='kubectl exec'
alias explain='kubectl explain'
alias exp='kubectl explain'
alias expose='kubectl expose'
alias gcm='get cm'
alias gcnp='get cnp'
alias gd='get deployment'
alias gds='get ds'
alias ge='eve'
alias getall='kubectl get all,cm,secret,ing'
alias getj='kubectl get -ojson'
alias getl='kubectl get --show-labels'
alias gettaint='kubectl get node -o custom-columns=NAME:.metadata.name,TAINTS:.spec.taints'
alias gety='kubectl get -oyaml'
alias gi='get ing'
alias gj='kubectl get -ojson'
alias gn='get node'
alias gp='get pod'
alias gpv='get pv'
alias gpvc='get pvc'
alias gq='get quota'
alias gs='get svc'
alias gse='get secret'
alias gss='get sealedsecret'
alias gsts='get sts'
alias gv='get vs'
alias gy='kubectl get -oyaml'
alias img='image'
alias kcp='kubectl cp'
alias kdiff='kubectl diff'
alias kdif='kubectl diff'
alias kpatch='kubectl patch'
alias kset='kubectl set'
alias ktail='kubectl tail'
alias ktop='kubectl top'
alias ktree='kubectl tree'
alias kustomize='kubectl kustomize'
alias kus='kubectl kustomize'
alias kwait='kubectl wait'
alias label='kubectl label'
alias lab='kubectl label'
alias lim='res'
alias logs='kubectl logs'
alias nsl='kubens'
alias ns-='kubens -'
alias options='kubectl options'
alias opt='kubectl options'
alias pat='kubectl patch'
alias plugin='kubectl plugin'
alias port-forward='kubectl port-forward'
alias pf='kubectl port-forward'
alias proxy='kubectl proxy'
alias replace='kubectl replace'
alias rep='kubectl replace'
alias rollout='kubectl rollout'
alias rol='kubectl rollout'
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
  git branch --show-current 2> /dev/null | sed 's/\(.*\)/(\1) /'
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

p()
{
  ping -nc2 -s16 -W3 $1 |grep -e icmp -e from
}

get()
{
  case "$@" in
  *node*)
    kubectl get "$@" |awk '{print $1, $2, $3}' |column -t
    ;;
  *pod*)
    kubectl get "$@" |awk '{print $1, $2, $3, $4}' |column -t
    ;;
  *vs*|*volumesnapshot*)
    kubectl get "$@" |awk '{print $1, $2}' |column -t
    ;;
  *secret*)
    kubectl get "$@" |awk '{print $1, $2}' |column -t
    ;;
  *svc*|*service*)
    kubectl get "$@" |awk '{print $1, $3, $5}' |column -t
    ;;
  *sealedsecret*)
    kubectl get "$@"
    ;;
  *deploy*|*deployment*)
    kubectl get "$@" |awk '{print $1, $2, $3, $4}' |column -t
    ;;
  *pvc*)
    kubectl get "$@" |awk '{print $1, $2, $4, $5}' |column -t
    ;;
  *)
    kubectl get "$@"
    ;;
  esac
}

getn()
{
  kubectl get pod --all-namespaces --field-selector spec.nodeName=$1
}

getc()
{
  kubectl get pod $1 -o jsonpath='{.spec.containers[*].name}'
  echo
}

util()
{
  kubectl describe node $1 |sed -ne '/Name:/,+p' -e '/Resource/,+6p' |
    grep -v Events
}

laststate()
{
  kubectl describe pod $1 | grep -B2 -A4 -e 'Image:' -e 'Last State:' |
    grep -vE 'Container ID|Port|Image|Image ID|Args:|Command:|--'
}

res()
{
  kubectl top pod $1
  kubectl describe pod $1 |
    grep -B1 -A3 -e 'Container ID' -e Requests: -e Limits: |
    grep -vE 'Container ID|Port|Image|Image ID|Command|Restart Count|Liveness|Environment|--|Args:|State:|SeccompProfile'
}

image()
{
  kubectl describe pod $1 |grep -e Image: |sort -nu
}

labels()
{
  kubectl get $1 $2 -ojsonpath='{"annotations:\n"}{.metadata.annotations}{"\nlabels:\n"}{.metadata.labels}{"\n"}' |
    sed 's/:/: /g ; s/.*,/  &/' | tr -d '{}"' |
    cut -d, --output-delimiter=$'\n  ' -f1-
}

vols()
{
  kubectl get pod $1 -ojsonpath='{range .spec.volumes[*]}{.name}{"\n"}{"  pvc: "}{.persistentVolumeClaim.claimName}{"\n"}{end}'
}

eve()
{
  if [ ! -z $1 ]; then
    kubectl events --for pod/$1
  else
    kubectl events
  fi
}

mkcd()
{
  mkdir -p $1 && cd $1
}

dl()
{
  diff -- $1 $2 |less
}

exesh()
{
  kubectl exec -it $1 -- /bin/bash
}

tls()
{
  oldifs=$IFS
  IFS=":"
  args=($*)
  openssl s_client -connect ${args[0]}:${args[1]:-443} < /dev/null 2>&1 |
    openssl x509 -noout -text
  IFS=$oldifs
}

tlsend()
{
  oldifs=$IFS
  IFS=":"
  args=($*)
  openssl s_client -connect ${args[0]}:${args[1]:-443} < /dev/null 2>&1 |
    openssl x509 -noout -enddate
  IFS=$oldifs
}

tlspem()
{
  oldifs=$IFS
  IFS=":"
  args=($*)
  openssl s_client -connect ${args[0]}:${args[1]:-443} < /dev/null 2>&1 |
    openssl x509 -outform pem
  IFS=$oldifs
}

tlsv()
{
  oldifs=$IFS
  IFS=":"
  args=($*)
  openssl s_client -connect ${args[0]}:${args[1]:-443} < /dev/null 2>&1
  IFS=$oldifs
}

tlsprint()
{
  openssl x509 -in $1 -noout -text
}

tlsprintend()
{
  openssl x509 -in $1 -noout -enddate
}

tlscheck()
{
  openssl x509 -noout -modulus -in $1 | openssl md5
  openssl rsa -noout -modulus -in $2 | openssl md5
}

ct()
{
  if [ ! -z $1 ]; then
    kubectx $1
  else
    kubectx -c
  fi
}

ns()
{
  if [ ! -z $1 ]; then
    kubens $1
  else
    kubens -c
  fi
}
