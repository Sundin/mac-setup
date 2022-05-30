export ZSH=/Users/gustav/.oh-my-zsh

ZSH_THEME="cloud"

# Setup:
# Install the following tools
#   brew install thefuck
#   brew install kubectx

plugins=(
  git
  history
  kubectl
)

source $ZSH/oh-my-zsh.sh

unsetopt inc_append_history

# flutter
export PATH=$PATH:~/flutter/bin

# dotnet
export PATH="$PATH:/Users/gustav/.dotnet/tools"

# AutoJump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Android:
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias docker-stop-all='docker stop $(docker ps -a -q)'
alias docker-kill-all='docker kill $(docker ps -a -q)'
alias docker-clean='docker rmi $(docker images -q -f dangling=true)'
alias docker-delete-all='docker rm $(docker ps -a -q)'

alias wav-rename="for f in *.WAV; do mv "$f" "${f%.*}.wav"; done"
alias wav="mkdir -p mp3 && for i in *.wav; do lame --preset extreme "${i}" "mp3/${i%.wav}.mp3"; done && ls -lh mp3"

alias nuke-branches="git branch | grep -v 'develop' | grep -v 'master' | grep -v 'main' | xargs git branch -D"
