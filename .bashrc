# couldn't figure out how to set in gitconfig
function cd_to_git_repo_root() {
  cd $(git rev-parse --show-toplevel)
}
alias root="cd_to_git_repo_root"

alias c="clear"

alias killfacetime="killall -kill FaceTimeNotificationCenterService"

# cd up
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# full ls
alias l="ls -alh"

# heroku related
alias h="heroku"
alias hc="heroku run rails console -a $1"
alias deploy="heroku maintenance:on -a $1; git ph $1 $2:master -f; heroku run rake db:migrate -a $1; heroku maintenance:off -a $1"
alias scheduler="heroku addons:open scheduler -a $1"

# quick access to files and repos
alias gitconfig="vi ~/.gitconfig"
alias bashrc="vi ~/.bashrc && source ~/.bashrc"
alias ave="cd ~/Documents/ubiqua/ave"
alias poc="cd ~/Documents/ubiqua/poc"
alias esb="cd ~/Documents/ubiqua/rosetta"
alias exporters="cd ~/Documents/ubiqua/rosetta-python"
alias repos="cd ~/Documents"
