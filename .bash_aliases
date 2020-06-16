USEFUL_PATH="$HOME/Useful"
BA_PATH="$USEFUL_PATH/.bash_aliases"
alias u='cd ..'
alias uu='up 2'
up () { for((n=0;n<$1;n++)); do cd ..; done;}
function mcd { mkdir -p "$1"; cd "$1";}
alias cdi='cd ~/IdeaProjects/; ls;'
alias cda='cd $USEFUL_PATH'

alias psi='ps -A | grep  ntelli'
watch () { while :; do clear; $@; sleep 2; done;} #your command
fel () { cat $1 | while read line; do echo $line; done;}

alias printJar='jar tf $1'
count () { grep -o $1 | wc -l;}

alias s='source ~/.bashrc'
alias g='grep $1' #why with ; doesn't work, needs to be function like watch?
alias r='rm -rf $1'
alias version='lsb_release -a'

alias al='cat $BA_PATH'
alias alg='al | grep $1'
alias eba='vi $BA_PATH'

#Git
alias gi='$USEFUL_PATH/gitInit.sh'
alias remote='git remote add origin https://github.com/Ozymadias/"${PWD##*/}".git && git push -u origin master'
alias cl='git clone $1'
unc () { git reset --soft HEAD~$1;} #uncommit
lcc () { name=$(git log --pretty=format:"%an" --date=format:%c -n 1); dateOfLastCommitOfOtherPerson=$(git log --pretty=format:"%Cred%ad%x09" --date=format:%c --perl-regexp --author='^((?!'"$name"').*)$' -n 1); lastConsecutiveCommitsNumber=$(git --no-pager log --pretty=format:"%Cgreen%h%x09%Cblue%an%x09%Cred%ad%x09%Creset%s" --date=format:%c --author="$name" --after="$dateOfLastCommitOfOtherPerson" | grep "$name" | wc -l); echo $lastConsecutiveCommitsNumber;}
unco () { for i in `seq $1`; do unc; done;}
unca () { unco $(lcc);}

alias gg='git grep $1 $(git rev-list --all)'

rev='git reset --hard'

alias st='git status'
alias a='git add . && st'
alias una='git reset'
alias c='git commit -m $1'
alias ca='git commit --amend --no-edit'
alias cam='git commit --amend -m $1'
alias cf='c "Fix things pointed out during code review"'

alias gla='git --no-pager log --pretty=format:"%Cgreen%h%x09%Cblue%an%x09%Cred%ad%x09%Creset%s" --date=format:%c'
alias l='gla -n 7'
alias gl='git log'
alias ll='gla -n 15'
alias l3='gla -n 21'

alias p='git push origin "$(git rev-parse --abbrev-ref HEAD)"'
alias pf='git push origin "$(git rev-parse --abbrev-ref HEAD)" -f'
alias pt='git push origin "$(git rev-parse --abbrev-ref HEAD):$1"'
alias pu='git pull'
alias pb='git pull origin "$(git rev-parse --abbrev-ref HEAD)"'

alias b='git checkout -b $1'
alias cb='git checkout $1' #change branch
__git_complete cb _git_checkout
alias cbm='git checkout master'
alias cbd='git checkout develop'
alias bb='git branch'
alias d='git branch -d $1'
alias br='git branch -m $1'

alias gs='git stash'
alias gsa='git stash apply'

alias gch='git checkout $1'
alias dif='git diff $1'

alias cher='git cherry-pick $1'
alias cherc='git cherry-pick --continue'
alias chera='git cherry-pick --abort'
alias reb='git rebase $1'
alias rebm='reb master'
alias reba='git rebase --abort'
alias rebc='git rebase --continue'
rebin () { git rebase --interactive HEAD~"$1";} #change to edit to edit you can also change order of commits, their messages or remove commit (line)
rebins () { git rebase --interactive "$1";} #for case of sha
alias rebinc='git commit --all --amend --no-edit; rebc'

alias gii='$USEFUL_PATH/createGitIgnore.sh'

alias gurl='git remote get-url origin'
gsurl () { git remote set-url origin $1;}

#MAVEN
alias mc='mvn clean'
alias mi='mvn clean install'
alias mist='mvn clean install -DskipTests'
alias mt='mvn clean test'
alias mp='mvn clean package'
alias mpst='mvn clean package -DskipTests'
alias mf='mvn com.coveo:fmt-maven-plugin:format'

#DOCKER
dpu () { docker pull $1;}
alias dps='docker ps'
alias dls='docker container ls'
dru () { docker run $1;}
dsrm () { docker stop $1; docker rm $1;}
drm () { docker rm $1;}
drmi () { docker rmi $1;}
dl () { docker logs $1;}
din () { docker inspect $1;}
dre () { docker restart $1;}
alias di='docker images'
dii () { docker inspect image $1;} 
alias drma='docker rm $(docker ps -a -q)'
db () { docker build -t $1 .;}
alias dka='docker kill $(docker ps -q)'
dk () { docker kill $1;}
alias drmas='docker rm $(docker ps -a -q)'
alias drmia='docker rmi $(docker images -q)'
alias drmin='docker rmi $(di -f "dangling=true" -q)'

#KUBERNETES
ksh () { kubectl exec -it $1 -- /bin/bash;}
kl () { kubectl logs $1;}
kp () { kubectl get pod $1;}
kdp () { kubectl delete pod $1;}
kdep () { kubectl describe pod $1;}

alias kc='kubectl get cronjob'
kdc () { kubectl delete cronjob $1;}
kcm () { kdj $1-manual; kubectl create job --from=cronjob/$1 $1-manual;}
alias kj='kubectl get job'
kdj () { kubectl delete job $1;}

alias kd='kubectl get deployments'
kdd () { kubectl delete deployment $1;}
ksc () { kubectl scale --replicas=0 deployment/$1;}

alias ks='kubectl get service'
alias kse='kubectl get secret'
alias kin='kubectl get ingress'

alias ka='kubectl get all'

kpf () { kubectl port-forward svc/$1 8081:$2;}
ktp () { echo -n '$1' | base64;}
ktpd () { echo '$1' | base64 --decode;}

alias kcxg='kubectl config current-context'
alias kcx='kubectl config get-contexts'
kcxs () { kubectl config use-context $1;}

#Helm
alias hls='helm ls'

#company specific
alias cbj='cb jenkins'
alias cln='make format'
alias bd='make build-deploy'
alias k8d='make k8s-deploy'
alias k8s='make k8s-status'
alias k8c='make k8s-clean'
