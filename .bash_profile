export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export EDITOR="mvim"

[ -f ~/.git-bash-completion.sh ] && . ~/.git-bash-completion.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export VERBOSE=nil

function __git_dirty {
  git diff --quiet HEAD &>/dev/null
  [ $? == 1 ] && echo "!"
}

function __git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}

bash_prompt() {
  local NONE="\[\033[0m\]"    # unsets color to term's fg color

  # regular colors
  local K="\[\033[0;30m\]"    # black
  local R="\[\033[0;31m\]"    # red
  local G="\[\033[0;32m\]"    # green
  local Y="\[\033[0;33m\]"    # yellow
  local B="\[\033[0;34m\]"    # blue
  local M="\[\033[0;35m\]"    # magenta
  local C="\[\033[0;36m\]"    # cyan
  local W="\[\033[0;37m\]"    # white

  # emphasized (bolded) colors
  local EMK="\[\033[1;30m\]"
  local EMR="\[\033[1;31m\]"
  local EMG="\[\033[1;32m\]"
  local EMY="\[\033[1;33m\]"
  local EMB="\[\033[1;34m\]"
  local EMM="\[\033[1;35m\]"
  local EMC="\[\033[1;36m\]"
  local EMW="\[\033[1;37m\]"

  # background colors
  local BGK="\[\033[40m\]"
  local BGR="\[\033[41m\]"
  local BGG="\[\033[42m\]"
  local BGY="\[\033[43m\]"
  local BGB="\[\033[44m\]"
  local BGM="\[\033[45m\]"
  local BGC="\[\033[46m\]"
  local BGW="\[\033[47m\]"

  local UC=$W                 # user's color
  [ $UID -eq "0" ] && UC=$R   # root's color

  PS1="$W\u@\h $G\$(rvm-prompt i v g)$W\n\w$R\$(__git_branch)$EMY\$(__git_dirty)$W $ "
}

bash_prompt
unset bash_prompt

# aliases
alias ls="ls -G"
alias rst="rails server thin"
alias be="bundle exec"

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
