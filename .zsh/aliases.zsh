alias g="git"
alias ls="ls -lGh"
alias mkdir="mkdir -p"
alias be="bundle exec"
alias ruby-install="ruby-install -s ~/.rubies/.src"
alias json="jq '.'"
alias pr="hub pull-request -o"
alias curl_time="curl -o /dev/null -s -w '%{time_total}\n'"
alias brewup="brew up && brew outdated | awk '{ print $1 }' | xargs brew upgrade"
