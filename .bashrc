devDir="$HOME/Development"
alias vim='/usr/local/bin/vim'
alias dotfiles='cd $devDir/dotfiles'
alias nodejs='cd $devDir/nodejs/node'
alias golang='cd $devDir/go/src'
alias pgstart='pg_ctl -D /usr/local/var/postgres start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop'

# Load work aliases
[[ -s "$HOME/.bash_work" ]] && source "$HOME/.bash_work"

alias gp='git push'
alias gpgh='git push github'
alias gu='git pull'
alias gug='git pull github'
alias gc='git commit'
alias gco='git checkout'
alias ga='git add'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --graph --decorate --pretty=oneline --abbrev-commit --all --date=local'
alias gs='git status'
alias gb='git branch'
alias gss='git show --stat --oneline'
alias gls='git ls-files'
alias grr='git remote rename origin github'
alias grrr='git remote rename upstream github'
alias grv='git remote -v'
alias gunstage='git reset HEAD'
alias gign='git ls-files -o -i --exclude-standard'
alias gpr='f() { gco -q master; git branch -Dq pr/$1; git fetch github pull/$1/head:pr/$1 && gco -q pr/$1; };f'
alias gprm='f() { gco -q master; git branch -Dq mine/pr/$1; git fetch mine pull/$1/head:mine/pr/$1 && gco -q mine/pr/$1; };f'

# Separate histories per terminal tab
#MYTTY=`tty`
#HISTFILE=$HOME/.bash_history_`basename $MYTTY`

export PATH="$PATH:/usr/local/bin/go"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
