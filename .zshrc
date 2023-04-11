# Git autocomplete
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash

#Editors
export EDITOR="code -w"
export BUNDLER_EDITOR="code -w"

#Aliases
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

fpath=(~/.zsh/functions $fpath)
autoload -Uz compinit && compinit

#Ruby dev env
eval "$(rbenv init -)"

# Node dev env
eval "$(nodenv init -)"

# Direnv
eval "$(direnv hook zsh)"

# macro to kill the docker desktop app and the VM (excluding vmnetd -> it's a service)
function killdocker() {
  ps ax|grep -i docker|egrep -iv 'grep|com.docker.vmnetd'|awk '{print $1}'|xargs kill
}

# Bundler testing
# Create directory in local testing dir
# Bundle init in that directory
# open Gemfile for editing
function bcd()  {
  cd /Users/mercedesbernard/Git/CloudCity/rubygems/tmp/local_test_cases
  mkdir $1
  cd $1
  ruby /Users/mercedesbernard/Git/CloudCity/rubygems/bundler/spec/support/bundle.rb init
  code Gemfile
}    