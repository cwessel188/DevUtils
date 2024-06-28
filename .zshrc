# QOL Aliases
alias ll='ls -al'
alias cd..='cd ..'
alias edit='open -a textedit' # opens the file in MacOS Notepad
alias mvnv='mvn validate'
alias linter='mvn clean antrun:run@ktlint-format'

# Git aliases
alias gs='git status'
alias co='git checkout'
alias commit='git commit -m'

# forces push to automatically set the upstream branch.
# this is configurable with $git config --global push.autoSetupRemote true
# alias gp='git push --set-upstream origin $(eval git branch --show-current)'

alias python=python3
alias nukeDocker=~/dev/scripts/dockernuke.sh

# add git branch to PS1
# need to ensure location of this git-provided script

source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh

# - - - - - - - - - - - - - - - - -
# PS1 (terminal heading) config
# - - - - - - - - - - - - - - - - -
# %n  username
# %m  machine
# %1~ working dir
# #% user type
# __git_ps1  preloaded git script, output is string-formatted 
# - - - - - - - - - - - - - - - - -

setopt PROMPT_SUBST
PS1='%n@%m %1~ $(__git_ps1 "[%s]") %# '
 

# add pip and friends to path
export PATH=$PATH:/Users/cwessel/Library/Python/3.8/bin
export PATH=$PATH:/usr/local/bin

# misc PATH updates, added due to shopping-pwa
export PATH=$PATH:/Users/cwessel/bin 
export PATH=~/bin:$PATH o
export PATH="/usr/local/sbin:$PATH" 
export PATH=./node_modules/.bin:$PATH

# nvm setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                    # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# - - - - - - - - - - - - - - - - -
# CREDENTIALS
# - - - - - - - - - - - - - - - - -
# Creds are stored in a separate file to keep them out of version control
# file is structured like:
#
# export ARTY_API_USER=*
# export ARTY_API_TOKEN=*
# - - - - - - - - - - - - - - - - -

source ~/dev/scripts/creds.sh

# copy artyLab creds for EG homebrew-tools
export HOMEBREW_ARTIFACTORY_API_USER=$ARTY_API_USER
export HOMEBREW_ARTIFACTORY_API_TOKEN=$ARTY_API_TOKEN

export ARTIFACTORY_USER=$ARTY_API_USER
export ARTIFACTORY_PASSWORD=$ARTY_API_TOKEN

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# coerce intelliJ to use correct java version
sdk use java 17.0.8-tem
