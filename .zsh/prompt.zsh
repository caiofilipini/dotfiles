setopt prompt_subst

RESET_COLOR="%f%b"

function __ruby_version {
  if type chruby &> /dev/null; then
    echo "%F{yellow}$(chruby | grep '*' | tr -d '* ')$RESET_COLOR"
  fi
}

function __git_status() {
  STATUS=""
  if [[ -n $(git status -s 2> /dev/null) ]]; then
    STATUS=" %F{yellow}✗$RESET_COLOR"
  fi
  INDEX=$(git status --porcelain 2> /dev/null)
  if $(echo "$INDEX" | grep '^?? ' &> /dev/null); then
    STATUS="$STATUS%F{blue} ?$RESET_COLOR"
  fi
  echo $STATUS
}

function __git_branch() {
  ref=$(git symbolic-ref --short HEAD 2> /dev/null)
  if [ -z "$ref" ]; then
    ref=$(git reflog 2> /dev/null | grep checkout | head -n1 | awk '{print $NF}')
  fi
  if [ -z "$ref" ]; then
    echo " "
  else
    echo " %F{blue}git:(%F{red}$ref%F{blue})$RESET_COLOR$(__git_status) "
  fi
}

PROMPT='%(?.%F{green}➜.%F{red}➜)% %f%b %F{cyan}%c$(__git_branch)%F{blue}%f%b'
RPROMPT='$(__ruby_version)'
