NAME="foobar"

COLOR_RESET="$(tput sgr0)"
COLOR_BLACK="$(tput setaf 0)"
COLOR_RED="$(tput setaf 1)"
COLOR_GREEN="$(tput setaf 2)"
COLOR_YELLOW="$(tput setaf 3)"
COLOR_BLUE="$(tput setaf 4)"
COLOR_MAGENTA="$(tput setaf 5)"
COLOR_CYAN="$(tput setaf 6)"
COLOR_WHITE="$(tput setaf 7)"
COLOR_NORMAL="$(tput setaf 7)"
NEWLINE=$'\n'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='NAME@local ${COLOR_YELLOW}${PWD/#$HOME/~} ${COLOR_MAGENTA}${vcs_info_msg_0_}${COLOR_RESET}${NEWLINE}$ '

# set git user
alias gse="git config user.email 'schinn.ben@gmail.com' && git config user.email"

alias lpid="cat /Users/ben.schinn/code/longbow/tmp/pids/server.pid"

alias bx="bundle exec"

run () {
  if [ -z "$1" ]; then
    echo "did you mean 'run server'?"
  else
    if [ "$1" = "server" ]; then 
      PB_CLIENT_TYPE=protobuf/nats/client bundle exec rails s
    elif [ "$1" = "docs" ]; then
      bundle exec middleman server
    elif [ "$1" = "redis" ]; then
      redis-server
    else
      echo "ERROR: no command 'run $1'"
    fi
  fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# erlang/elixir
# . $HOME/.asdf/asdf.sh
# . $HOME/.asdf/completions/asdf.bash

# flutter
export PATH="$PATH:$HOME/projects/flutter/bin"

autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit
complete -W "$(cat ~/.tsh/complete.txt)" ssh #mx-teleport-bash-complete

tsh status | grep -q EXPIRED && printf "\e[93mYou need to run tlogin\e[0m\n" #mx-teleport-bash-notify

export PATH="$PATH:$HOME/bin" #mx-teleport-bin

alias consul="~/bin/consul"
alias terraform="~/bin/terraform"

alias python="/usr/local/bin/python3"

source /Users/benschinn/.pgvm/pgvm_env

alias oni="/Applications/Onivim2.app/Contents/MacOS/Oni2"

# Git
alias gp="git push"
alias gs="git status"
# alias gpsu="git push --set-upstream origin $(git rev-parse --symbolic-full-name --abbrev-ref HEAD)"
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
#
#   $ cat .git-template/HEAD 
#   ref: refs/heads/main
#
alias gi="git init --template ~/.git-template"

# zsh
alias sz="source ~/.zshrc"
alias ez="vi ~/.zshrc"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

# mx
alias nats="PB_CLIENT_TYPE=protobuf/nats/client PB_SERVER_TYPE=protobuf/nats/runner"
rootdir=~
mx() {
  "$rootdir/code/$1"
}

# go
export GO111MODULE="on"
export GOPRIVATE="gitlab.mx.com"
export GOPATH="$HOME/go"

# racket
alias racket="/Applications/Racket-v7.9/bin/racket"

# lambda
alias lambda="cd ~/projects/lambda-school"
alias new-html="cp ~/tmp/index.html"

# personal projects
ol() {
  "$rootdir/projects/occupied-lands/$1"
}

# Hook direnv into your shell.
eval "$(direnv hook zsh)"

#tmux
alias tmux-kill="tmux kill-session -a"

#db
export DATABASE_MAX_OPEN_CONNECTIONS=10
export RPC_WORKER_POOL_SIZE=10
