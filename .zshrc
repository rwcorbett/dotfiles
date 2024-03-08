# ***
# ***
# ***
# 
# keep this file in the `dotfiles` folder - symlink it to root of home folder: `ln -s ~/dotfiles/.zshrc ~/.zshrc`
# 
# ***
# ***
# ***

# ###
# PATH
# ###
export HOME=${HOME:-'/Users/robb'}
# echo "HOME == $HOME"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/":"$PATH"

export PATH=$PATH:"/opt/homebrew/bin"
export PATH=$PATH:"/opt/homebrew/opt"

# https://github.com/mivok/slack_status_updater
export PATH=$PATH:$HOME/dotfiles/slack_status_updater

# sphp -- https://github.com/rhukster/sphp.sh
#       `ln -s ~/dotfiles/sphp.sh/sphp.sh /usr/local/bin/sphp`
#       `chmod +x /usr/local/bin/sphp`
export PATH="/opt/homebrew/opt/php@7.4/bin":$PATH
export PATH="/opt/homebrew/opt/php@7.4/sbin":$PATH
export PATH="/opt/homebrew/opt/php@8.1/bin":$PATH
export PATH="/opt/homebrew/opt/php@8.1/sbin":$PATH
export PATH="/opt/homebrew/opt/php@8.2/bin":$PATH
export PATH="/opt/homebrew/opt/php@8.2/sbin":$PATH

# echo "PATH == $PATH"

# ###
# EDITOR
# ###
# export EDITOR='code -r'

# ###
# Composer
# ###
export PATH=$PATH:"/usr/local/bin/composer"

# ###
# Nodejs
# ###
export NODE_PATH=$NODE_PATH:`npm root -g`

# ###
# nvm
# ###
export PATH=$PATH:"~/.nvm/nvm.sh"
export PATH=$PATH:"~/.nvm"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_AUTO_USE=true

# ###
# ZSH
# ###
export ZSH="$HOME/dotfiles/.oh-my-zsh"
ZSH_CUSTOM="$ZSH/custom"

# ZSH_THEME=clean
ZSH_THEME="spaceship"
COMPLETION_WAITING_DOTS="true"
plugins=(
 nvm
 npm
 command-not-found
 vscode
 aws
 )
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 3
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # matches case insensitive for lowercase
zstyle ':completion:*' insert-tab pending # pasting with tabs doesn't perform completion

source $ZSH/oh-my-zsh.sh

# ###
# spaceship <https://spaceship-prompt.sh>
# ###
export SPACESHIP_CONFIG="$HOME/dotfiles/spaceship-conf/.spaceshiprc.zsh"
# echo "SPACESHIP_CONFIG == $SPACESHIP_CONFIG"

# ###
# ALIASES
# ###

# Slack status; use script and Hammerspoon
# alias ss="slack_status.sh $@"
alias ss-away="awayback.sh away"
alias ss-offline="slack_status.sh none;awayback.sh away;"
alias ss-lunch="slack_status.sh lunch;awayback.sh away;"
alias ss-coffee="slack_status.sh coffee;awayback.sh away;"
alias ss-back="slack_status.sh none;awayback.sh back"
alias ss-meeting="slack_status.sh zoom;awayback.sh back;"
alias ss-zoom="slack_status.sh zoom;awayback.sh back;"

# Always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias sed='gsed'

# TODO change this to function and show the echo msg when it runs
# echo "loaded ~/.zshrc"
alias reload="exec ${SHELL} -l" # alias reload="source ~/.zshrc"

alias ll="exa -F --long --group --header --group-directories-first -H -u --git"
alias lla="exa -a -F --long --group --header --group-directories-first --git"
alias lld="exa -D --long --group"

# Switch terminal architecture type:
alias x86="$env /usr/bin/arch -x86_64 /bin/zsh ---login"
alias arm="$env /usr/bin/arch -arm64 /bin/zsh ---login"