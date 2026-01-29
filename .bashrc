# ~/.bashrc

if [ -z "$PS1" ]; then
  shopt -s expand_aliases
fi

PS1='\h `git branch --show-current 2>/dev/null | sed "s/\(.*\)/(\1) /"`\$ '
export PS1
export PAGER=less
export PATH=/opt/local/libexec/gnubin:/opt/local/bin:/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/opt/local/sbin:~/data/prog/go/bin:~/.krew/bin
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
alias b64='base64'
alias bs='base64'
alias bsd='base64 -d'
alias c='cat'
alias calicoctl='calicoctl --allow-version-mismatch'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cl='clear'
alias cmatrix='cmatrix -s -C red'
alias d='diff'
alias dco='docker-compose --ansi=never'
alias diff='diff --color=always -u'
alias dotupdate='curl https://raw.githubusercontent.com/akosela/dotfiles/master/.bashrc > ~/.bashrc'
alias dps="docker ps --format 'table {{.Image}}\t{{.Names}}\t{{.Ports}}\t{{.Command}}\t{{.Status}}'"
alias e='ed'
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
alias l='ls'
alias le='less'
alias lj='luajit'
alias ll='ls -Fl'
alias llh='ls -Flh'
alias lock='clear && VLOCK_MESSAGE="" vlock'
alias ls='ls -F'
alias lsd="ls -d */ | sed 's/\/$//g' | column -c80"
alias m='man'
alias mk='make'
alias mkd='make dist'
alias mkr='make run'
alias mkc='make clean'
alias md='mkdir'
alias n='netstat -pant'
alias p='echo'
alias print='echo'
alias o='pwd'
alias r='ip r'
alias s='ssh'
alias sb='sudo bash'
alias sd='sudo '
alias sudo='sudo '
alias t='tail'
alias t1='tail -1'
alias t2='tail -2'
alias t5='tail -5'
alias to='top -bn1 | head -25'
alias u='uptime'
alias un='uname -a'
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
alias cm='git commit -am'
alias commit='git commit -am'
alias conf='git config -l'
alias dif='git diff'
alias fetch='git fetch'
alias filter-branch='git filter-branch'
alias format-patch='git format-patch'
alias gg='git grep'
alias ggrep='git grep'
alias glg="git log --graph --pretty=format:'%C(white bold)%h%Creset -%C(red)%d%Creset %s %C(cyan bold)(%cr)%Creset <%an>' --abbrev-commit"
#alias glg="git log --graph --pretty=format:'%C(blue)%h%Creset -%C(red)%d%Creset %s %C(blue)(%cr)%Creset <%an>' --abbrev-commit"
alias init='git init'
alias lfs='git lfs'
alias lg="git log -n 10 --graph --pretty=format:'%C(white bold)%h%Creset -%C(red)%d%Creset %s %C(cyan bold)(%cr)%Creset <%an>' --abbrev-commit"
#alias lg="git log -n 10 --graph --pretty=format:'%C(blue)%h%Creset -%C(red)%d%Creset %s %C(blue)(%cr)%Creset <%an>' --abbrev-commit"
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
alias gcpol='get cpol'
alias gd='get deployment'
alias gds='get ds'
alias ge='eve'
alias gep='get ep'
alias getall='kubectl get all,cm,secret,ing'
alias getj='kubectl get -ojson'
alias getl='kubectl get --show-labels'
alias getpending='kubectl get pods -o custom-columns=NS:metadata.namespace,NAME:metadata.name,STATUS:status.phase,AGE:.metadata.creationTimestamp --field-selector=status.phase=Pending'
alias gettaint='kubectl get node -o custom-columns=NAME:.metadata.name,TAINTS:.spec.taints'
alias gety='kubectl get -oyaml'
alias gi='get ing'
alias gj='kubectl get -ojson'
alias gn='get node'
alias gnw='kubectl get node'
alias gp='get pod'
alias gpe='kubectl get pod |grep -E "NAME|CrashLoopBackOff|Error|ImagePullBackOff|ErrImagePull|Evicted|Failed|ContainerCreating|ContainerStatusUnknown|Pending|Terminating"'
alias gpea="kubectl get pod -A |grep -E 'NAMESPACE|CrashLoopBackOff|Error|ImagePullBackOff|ErrImagePull|Evicted|Failed|ContainerCreating|ContainerStatusUnknown|Pending|Terminating' |awk '{print \$1, \$2, \$3, \$4}' |column -t"
alias gpew='kubectl get pod -owide |grep -E "NAME|CrashLoopBackOff|Error|ImagePullBackOff|ErrImagePull|Evicted|Failed|ContainerCreating|ContainerStatusUnknown|Pending|Terminating"'
alias gpeaw='kubectl get pod -A -owide |grep -E "NAMESPACE|CrashLoopBackOff|Error|ImagePullBackOff|ErrImagePull|Evicted|Failed|ContainerCreating|ContainerStatusUnknown|Pending|Terminating"'
alias gpv='get pv'
alias gpvc='get pvc'
alias gpw='kubectl get pod -owide'
alias grs='get rs'
alias gq='get quota'
alias gs='get svc'
alias gse='get secret'
alias gss='get sealedsecret'
alias gsts='get sts'
alias gvs='get vs'
alias gw='get validatingwebhookconfiguration,mutatingwebhookconfiguration'
alias gya='kubectl get -oyaml'
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
alias log='kubectl logs'
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
alias sca='kubectl scale'
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

png()
{
  ping -nc2 -s16 -W2 $1 |grep -e PING -e icmp -e from -e loss
}

get()
{
  case "$@" in
  *node*)
    kubectl get "$@" |awk '{print $1, $2, $3}' |column -t
    ;;
  *pod*)
    kubectl get "$@"
    ;;
  *vs*|*volumesnapshot*)
    kubectl get "$@" |awk '{print $1, $2}' |column -t
    ;;
  *secret*)
    kubectl get "$@" |awk '{print $1, $2}' |column -t
    ;;
  *svc*|*service*)
    kubectl get "$@" |awk '{print $1, $3, $4, $5}' |column -t
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

getnode ()
{
  kubectl describe pod $1 | grep Node:
}

getp()
{
  kubectl get pod --all-namespaces \
    -ojsonpath='{range .items[?(@.spec.nodeName)]}{.spec.nodeName}{"\n"}{end}' |
    sort |uniq -c |sort -rn
}

getc()
{
  kubectl get pod $1 -o jsonpath='{.spec.containers[*].name}'
  echo
}

cap()
{
  for node in `kubectl get nodes -oname |cut -d/ -f2`; do
    echo "=== $node ==="
    kubectl describe node "$node" | sed -n '/Resource/,+3p'
  done
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

img()
{
  case "$1" in
  -a)
    kubectl get pod -A \
      -o jsonpath='{range .items[*]}{range .spec.initContainers[*]}{.image}{"\n"}{end}{range .spec.containers[*]}{.image}{"\n"}{end}{end}' | sort -u
    ;;
  "")
    kubectl get pod \
      -o jsonpath='{range .items[*]}{range .spec.initContainers[*]}{.image}{"\n"}{end}{range .spec.containers[*]}{.image}{"\n"}{end}{end}' \
    ;;
  *)
    kubectl get pod $1 \
      -o jsonpath='{range .spec.initContainers[*]}{.image}{"\n"}{end}{range .spec.containers[*]}{.image}{"\n"}{end}'
    ;;
  esac
}

labels()
{
  kubectl get $1 $2 -ojsonpath='{"annotations:\n"}{.metadata.annotations}{"\nlabels:\n"}{.metadata.labels}{"\n"}' |
    sed 's/:/: /g ; s/.*,/  &/' | tr -d '{}"' |
    cut -d, --output-delimiter=$'\n  ' -f1-
}

gl()
{
  kubectl get $1 $2 -ojsonpath='{"labels:\n"}{.metadata.labels}{"\n"}' |
    sed 's/:/: /g ; s/.*,/  &/' | tr -d '{}"' |
    cut -d, --output-delimiter=$'\n  ' -f1-
}

gv()
{
  kubectl get pod $1 -ojsonpath='{range .spec.volumes[*]}{.name}{"\n"}{"  pvc: "}{.persistentVolumeClaim.claimName}{"\n"}{end}'
}

# eve <pod> -n <ns>
eve()
{
  if [ ! -z $1 ]; then
    if [ ! -z $3 ]; then
      kubectl events --for pod/$1 -n $3
    elif [ ! -z $2 ]; then
      kubectl events -n $2
    else
      kubectl events --for pod/$1
    fi
  else
      kubectl events
  fi
}

getip()
{
    kubectl get pods -o jsonpath='{range .items[*]}{.status.podIP}{"\t"}{.metadata.name}{"\n"}{end}'
}

mcd()
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

tlspemv()
{
  oldifs=$IFS
  IFS=":"
  args=($*)
  openssl s_client -connect ${args[0]}:${args[1]:-443} -showcerts < /dev/null \     2>&1 | sed -n /CERTIFICATE/,/CERTIFICATE/p
  IFS=$oldifs
}

tlsv()
{
  oldifs=$IFS
  IFS=":"
  args=($*)
  openssl s_client -connect ${args[0]}:${args[1]:-443} -showcerts < /dev/null \
    2>&1
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
    echo `kubectx -c`:`kubens -c`
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

ceph()
{
  tools=`kubectl get pod -n rook-ceph |grep tools |awk '{print $1}'`
  kubectl exec -it $tools -n rook-ceph -- ceph $1 $2 $3
}

radosgw-admin()
{
  tools=`kubectl get pod -n rook-ceph |grep tools |awk '{print $1}'`
  kubectl exec -it $tools -n rook-ceph -- radosgw-admin $1 $2 $3
}

logall ()
{
    kubectl logs --prefix -l app.kubernetes.io/instance=$1
}

enc()
{
  gpg --cipher-algo AES256 --s2k-digest-algo SHA512 --s2k-count 65011712 \
    -c -a --pinentry-mode loopback --no-symkey-cache -o $1.gpg $1
}

dec()
{
  gpg --pinentry-mode loopback --no-symkey-cache -o ${1%.*} -d $1
}

rocks()
{
  case "$@" in
    b*)
      shift; luarocks build $@ ;;
    c)
      luarocks config ;;
    d*)
      if [ "$1" == "doc" ]; then
        shift; luarocks doc $@
      else
        shift; luarocks download $@
      fi
      ;;
    h)
      luarocks help ;;
    i*)
      if [ "$1" == "init" ]; then
        luarocks init
      else
        shift; luarocks install $@
      fi
      ;;
    l*)
      if [ "$1" == "lint" ]; then
        shift; luarocks lint $@
      else
        shift; luarocks list --porcelain $@
      fi
      ;;
    m)
      luarocks make ;;
    nv*)
      shift; luarocks new_version $@ ;;
    p*)
      if [ "$1" == "purge" ]; then
        shift; luarocks purge $@
      elif [[ "$1" =~ ^p.*k ]]; then
        shift; luarocks pack $@
      else
        luarocks path
      fi
      ;;
    r*)
      shift; luarocks remove $@ ;;
    s*)
      if [[ "$1" =~ ^sh.* ]]; then
        shift; luarocks show $@
      else
        shift; luarocks search --porcelain $@
      fi
      ;;
    t)
      shift; luarocks test $@ ;;
    u*)
      if [[ "$1" =~ u.*k ]]; then
        shift; luarocks unpack $@
      else
        shift; luarocks upload $@
      fi
      ;;
    w*)
      if [ "$1" == "write_rockspec" ]; then
        shift; luarocks write_rockspec $@
      else
        shift; luarocks which $@
      fi
      ;;
    *)
      luarocks ;;
  esac
}

h2d()
{
  echo $(( 0x$1 ))
}

d2h()
{
  printf "0x%x\n" $1
}

h2b()
{
  echo "obase=2; ibase=16; `echo $1 | tr 'a-f' 'A-F'`" | bc
}

mytr()
{
  if [ "$1" == "-t" ]; then
    mtr -t $2
  else
    mtr -rc2 $1
  fi
}

gcr()
{
  kubectl api-resources --api-group="$1" -o name | while read resource; do
    echo "== $resource =="
    kubectl get "$resource" --ignore-not-found
  done
}

gy()
{
  kubectl get -oyaml $1 $2 |sed -n /^spec:/,/^status:/p |sed '$d' \
    | bat -fp -lyaml --theme=Coldark-Cold
}

wa()
{
  watch bash -lc \'$@\'
}

cu()
{
  curl -vsLI https://$1 2>&1 | grep -E '^HTTP|SSL cert|^location:'
}

# kubectl completion
source <(kubectl completion bash)

_complete_des() {
    COMP_WORDS=(kubectl describe "${COMP_WORDS[@]:1}")
    COMP_CWORD=$((COMP_CWORD + 1))
    local IFS=' '
    COMP_LINE="${COMP_WORDS[*]}"
    COMP_POINT=${#COMP_LINE}
    __start_kubectl
}

_complete_despod() {
    COMP_WORDS=(kubectl describe pod "${COMP_WORDS[@]:1}")
    COMP_CWORD=$((COMP_CWORD + 2))
    local IFS=' '
    COMP_LINE="${COMP_WORDS[*]}"
    COMP_POINT=${#COMP_LINE}
    __start_kubectl
}

_complete_get() {
    COMP_WORDS=(kubectl get "${COMP_WORDS[@]:1}")
    COMP_CWORD=$((COMP_CWORD + 1))
    local IFS=' '
    COMP_LINE="${COMP_WORDS[*]}"
    COMP_POINT=${#COMP_LINE}
    __start_kubectl
}

_complete_getpod() {
    COMP_WORDS=(kubectl get pod "${COMP_WORDS[@]:1}")
    COMP_CWORD=$((COMP_CWORD + 2))
    local IFS=' '
    COMP_LINE="${COMP_WORDS[*]}"
    COMP_POINT=${#COMP_LINE}
    __start_kubectl
}

_complete_logs() {
    COMP_WORDS=(kubectl logs "${COMP_WORDS[@]:1}")
    COMP_CWORD=$((COMP_CWORD + 1))
    local IFS=' '
    COMP_LINE="${COMP_WORDS[*]}"
    COMP_POINT=${#COMP_LINE}
    __start_kubectl
}

_complete_edit() {
    COMP_WORDS=(kubectl edit "${COMP_WORDS[@]:1}")
    COMP_CWORD=$((COMP_CWORD + 1))
    local IFS=' '
    COMP_LINE="${COMP_WORDS[*]}"
    COMP_POINT=${#COMP_LINE}
    __start_kubectl
}

_complete_del() {
    COMP_WORDS=(kubectl delete "${COMP_WORDS[@]:1}")
    COMP_CWORD=$((COMP_CWORD + 1))
    local IFS=' '
    COMP_LINE="${COMP_WORDS[*]}"
    COMP_POINT=${#COMP_LINE}
    __start_kubectl
}

_complete_exe() {
    COMP_WORDS=(kubectl exec "${COMP_WORDS[@]:1}")
    COMP_CWORD=$((COMP_CWORD + 1))
    local IFS=' '
    COMP_LINE="${COMP_WORDS[*]}"
    COMP_POINT=${#COMP_LINE}
    __start_kubectl
}

_complete_cp() {
    COMP_WORDS=(kubectl cp "${COMP_WORDS[@]:1}")
    COMP_CWORD=$((COMP_CWORD + 1))
    local IFS=' '
    COMP_LINE="${COMP_WORDS[*]}"
    COMP_POINT=${#COMP_LINE}
    __start_kubectl
}

_complete_sca() {
    COMP_WORDS=(kubectl scale "${COMP_WORDS[@]:1}")
    COMP_CWORD=$((COMP_CWORD + 1))
    local IFS=' '
    COMP_LINE="${COMP_WORDS[*]}"
    COMP_POINT=${#COMP_LINE}
    __start_kubectl
}

complete -o default -o bashdefault -F _complete_get get
complete -o default -o bashdefault -F _complete_des des
complete -o default -o bashdefault -F _complete_getpod img
complete -o default -o bashdefault -F _complete_get gety
complete -o default -o bashdefault -F _complete_get gy
complete -o default -o bashdefault -F _complete_get gya
complete -o default -o bashdefault -F _complete_get getj
complete -o default -o bashdefault -F _complete_getpod getc
complete -o default -o bashdefault -F _complete_logs log
complete -o default -o bashdefault -F _complete_edit edit
complete -o default -o bashdefault -F _complete_del del
complete -o default -o bashdefault -F _complete_exe exe
complete -o default -o bashdefault -F _complete_exe exesh
complete -o default -o bashdefault -F _complete_cp kcp
complete -o default -o bashdefault -F _complete_despod res
complete -o default -o bashdefault -F _complete_getpod gv
complete -o default -o bashdefault -F _complete_sca sca
complete -o default -o bashdefault -F _complete_getpod eve
complete -o default -o bashdefault -F _complete_getpod laststate
