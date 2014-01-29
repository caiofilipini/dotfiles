export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export JAVA_TOOL_OPTIONS='-Djava.awt.headless=true'
export SCALA_HOME=/usr/local/Cellar/scala/2.9.2
export EDITOR="vim"
export DISPLAY=localhost:0.0
export ODBCINI="$HOME/.odbc.ini"
export GOPATH="$HOME/dev/programming-in-go:$HOME/dev/casa-do-codigo/go/exemplos:$HOME/dev/go"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
precmd_functions+=("chruby_auto")

function __ruby_version {
  echo "$(chruby | grep '*' | tr -d '* ')"
}

ruby_info='$(__ruby_version)'
RPROMPT="%{$fg_bold[yellow]%}$ruby_info%{$reset_color%}"

# aliases
alias ls="ls -lGh"
alias be="bundle exec"
alias ruby-install="ruby-install -s ~/.rubies/.src"

# Customize to your needs...
export PATH=/usr/local/heroku/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH:$GOPATH/bin

export CDPATH=.:$HOME/dev/sponsorpay
