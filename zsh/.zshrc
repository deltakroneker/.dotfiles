export PATH=$HOME/bin:/usr/local/bin:/usr/local/opt/postgresql@12/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
    git zsh-autosuggestions
    # zsh-syntax-highlighting  
    z
)

source $ZSH/oh-my-zsh.sh

# Language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Personal aliases
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/Core"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/Core"
alias l="ls -l"
alias ll="ls -la"
alias lt="tree -dirsfirst"
alias f="bundle exec fastlane"
#alias vim="nvim"
#alias vi="nvim"
alias vimdiff='nvim -d'
alias t=task

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}
