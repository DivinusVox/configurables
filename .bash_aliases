source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/projects
alias ..='cd ..'
alias ...='cd ../..'
alias l='ls'
alias ack='ack-grep'
source /home/kcole/.bash_prompt
export GOPATH=$HOME
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin:$HOME/bin

export PYTHONDONTWRITEBYTECODE=1

source /etc/bash_completion.d/docker.io
