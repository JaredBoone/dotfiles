# ~/.zshrc
# Interactive shell configuration only

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

[[ -o interactive ]] || return

# Oh-my-zsh setup
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
DEFAULT_USER=$USER
DISABLE_UPDATE_PROMPT=true

# Professional
# DISABLE_UNTRACKED_FILES_DIRTY="true"

#export NVM_LAZY_LOAD=true

# Plugins
plugins=(git macos brew colorize node npm zsh-nvm zsh-bat zsh-syntax-highlighting zsh-completions)

source $ZSH/oh-my-zsh.sh

# Aliases
alias firefox="open /Applications/Firefox.app"
alias chrome="open /Applications/Google\ Chrome.app"
alias brewup="brew upgrade && brew upgrade --cask && brew cleanup && brew doctor"

# Professional Aliases
# alias patroni-psql1='docker exec -it $(docker ps -q -f name=patroni-1) psql channels'
# alias patroni-psql2='docker exec -it $(docker ps -q -f name=patroni-2) psql channels'
# alias patroni-list='docker exec -it $(docker ps -q -f name=patroni | head -n 1) patronictl list'

# Completions
fpath=(/usr/local/share/zsh-completions $fpath)
fpath=($HOME/.docker/completions $fpath)
autoload -Uz compinit
compinit

source /opt/homebrew/share/zsh-you-should-use/you-should-use.plugin.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if [ -f ~/.env ]; then
    source ~/.env
fi
