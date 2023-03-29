[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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
PROMPT='${NAME}@local ${COLOR_YELLOW}${PWD/#$HOME/~} ${COLOR_MAGENTA}${vcs_info_msg_0_}${COLOR_RESET}${NEWLINE}$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Git
alias gp="git push"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias gco="git checkout"
alias gse="git config user.email 'schinn.ben@gmail.com' && git config user.email"

# zsh
alias sz="source ~/.zshrc"
alias ez="nvim ~/.zshrc"

eval $(ssh-agent) > /dev/null
# ssh-add --apple-use-keychain ~/.ssh/ahrefs/identity &> /dev/null
ssh-add --apple-use-keychain ~/.ssh/ahrefs/identity

alias gse="git config user.email 'schinn.ben@gmail.com' && git config user.email"
alias l="ls -la"
alias oexit="ssh -O exit nspawn"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
export PATH=${PATH}:usr/local/mysql-5.7.12-osx10.11-x86_64/bin
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
