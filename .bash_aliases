alias gii='~/createGitIgnore.sh'
alias gi='~/gitInit.sh'
alias st='git status'
alias a='git add .'
alias p='git push origin "$(git rev-parse --abbrev-ref HEAD)"'
alias c='git commit -m $1'
alias l='git log'
alias b='git checkout -b $1'
alias bb='git branch'
alias g='git $1'
alias d='git branch -d $1'
alias u='cd ..'
alias uu='cd ../..'
alias s='source ~/.bashrc'
alias r='rm -rf $1'
alias remote='git remote add origin https://github.com/Ozymadias/"${PWD##*/}".git && git push -u origin master'
alias version='lsb_release -a'
alias cdi='cd IdeaProjects/; ls;'

function mcd { mkdir -p "$1"; cd "$1";}

up () { for((n=0;n<$1;n++)); do cd ..; done;}
