source ~/.bashrc


# colors
PS1='\w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '


# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

export SMS_PRODUCTION="false" 

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

alias l="ls -la"

#git set email 
alias gse="git config user.email 'schinn.ben@gmail.com' && git config user.email"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

alias nats='PB_CLIENT_TYPE="protobuf/nats/client"'
alias natsd='PB_SERVER_TYPE="protobuf/nats/server"'

run () {
  if [ -z "$1" ]; then
    echo "did you mean 'run firefly'?"
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

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

export PATH="$HOME/.cargo/bin:$PATH"
