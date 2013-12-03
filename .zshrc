export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export JAVA_TOOL_OPTIONS='-Djava.awt.headless=true'
export SCALA_HOME=/usr/local/Cellar/scala/2.9.2
export EDITOR="vim"
export DISPLAY=localhost:0.0
export ODBCINI="$HOME/.odbc.ini"
export GOPATH="$HOME/dev/go"

# RVM
export PATH=$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rvm)

source $ZSH/oh-my-zsh.sh

rvm_info='$(rvm_prompt_info)'
RPROMPT="%{$fg_bold[yellow]%}${rvm_info}%{$reset_color%}"

# Customize to your needs...
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH

# aliases
alias ls="ls -lGh"
alias be="bundle exec"
alias sp="cd ~/dev/sponsorpay"

export PATH="/usr/local/heroku/bin:$PATH:$GOPATH/bin"
