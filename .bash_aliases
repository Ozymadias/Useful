alias u='cd ..'
alias uu='up 2'
up () { for((n=0;n<$1;n++)); do cd ..; done;}
function mcd { mkdir -p "$1"; cd "$1";}
alias cdi='cd ~/IdeaProjects/; ls;'
alias printJar='jar tf $1'
count () { grep -o $1 | wc -l;}

alias s='source ~/.bashrc'
alias r='rm -rf $1'
alias version='lsb_release -a'

alias al='cat ~/Useful/.bash_aliases'
alias alg='al | grep $1'
alias eba='vi ~/Useful/.bash_aliases'

#Git
alias g='git $1'
alias gi='~/Useful/gitInit.sh'
alias remote='git remote add origin https://github.com/Ozymadias/"${PWD##*/}".git && git push -u origin master'
alias cl='git clone $1'
alias uncommit='git reset HEAD~1 --soft'
alias unc='uncommit $1'

alias st='git status'
alias a='git add . && st'
alias c='git commit -m $1'
alias ca='git commit --amend --no-edit'
alias cam='git commit --amend -m $1'

alias l='git log --pretty=format:"%Cgreen%h%x09%Cblue%an%x09%Cred%ad%x09%Creset%s" --date=format:%c'
alias ll='git log'

alias p='git push origin "$(git rev-parse --abbrev-ref HEAD)"'
alias pu='git pull'
alias pb='git pull origin "$(git rev-parse --abbrev-ref HEAD)"'

alias b='git checkout -b $1'
alias cb='git checkout $1'
alias cbm='git checkout master'
alias bb='git branch'
alias d='git branch -d $1'
alias br='git branch -m $1'

alias gs='git stash'
alias gsa='git stash apply'

alias gch='git checkout $1'
alias dif='git diff $1'

alias cher='git cherry-pick $1'
alias reb='git rebase $1'

alias gii='~/Useful/createGitIgnore.sh'
