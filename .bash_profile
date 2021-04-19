
export PATH=$PATH:~/usr/local/bin
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

export NVM_DIR="/Users/mercedes/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#node
 # export NVM_DIR="$HOME/.nvm"
 # . "/usr/local/opt/nvm/nvm.sh"

#rbenv
export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

#Editors
export EDITOR="code -w"
export BUNDLER_EDITOR="code -w"

#Aliases
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# git branch autocomplete
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi


# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
