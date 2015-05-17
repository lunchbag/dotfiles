# IMPORTS
for file in ~/.{export,path,alias,function,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# OH-MY-ZSH
plugins=(brew bower git osx vagrant)
source $ZSH/oh-my-zsh.sh

# RBENV
eval "$(rbenv init - zsh)"

# OPTIONS
ulimit -n 10240
