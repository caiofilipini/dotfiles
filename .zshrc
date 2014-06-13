# load all config files
for config_file ($HOME/.zsh/*.zsh) source $config_file

# history configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history # share command history data

# force emacs key bindings for command line
bindkey -e

# directory navigation
setopt auto_pushd
setopt pushd_ignore_dups

# general variables
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export JAVA_TOOL_OPTIONS='-Djava.awt.headless=true'
export SCALA_HOME=/usr/local/Cellar/scala/2.9.2
export EDITOR="vim"
export DISPLAY=localhost:0.0
export ODBCINI="$HOME/.odbc.ini"

ulimit -Sn 2048

# auto-completion
zstyle ':completion:*:*:*:*:*' menu select
autoload -U compinit
compinit

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
precmd_functions+=("chruby_auto")

# paths
MAIN_GO_PATH="$HOME/dev/go"
export GOPATH="$MAIN_GO_PATH:$HOME/dev/casadocodigo/exemplos"
export PATH=/usr/local/bin:$PATH:$MAIN_GO_PATH/bin
export CDPATH=.:$HOME/dev/sponsorpay
