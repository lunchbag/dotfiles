# OH-MY-ZSH
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="jstarry"
plugins=(brew bower git gradle osx vagrant)
COMPLETION_WAITING_DOTS="true"
source $ZSH/oh-my-zsh.sh

# RBENV
eval "$(rbenv init - zsh)"

# OPTIONS
ulimit -n 10240
bindkey -v
