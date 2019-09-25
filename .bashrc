# couldn't figure out how to set in gitconfig
function cd_to_git_repo_root() {
  cd $(git rev-parse --show-toplevel)
}
alias root="cd_to_git_repo_root" 
alias c="clear"
alias g="git"

alias hidefacetime="killall -kill FaceTimeNotificationCenterService"

alias ip="ifconfig | grep 'inet 192.'"

# cd up
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# full ls
alias l="ls -alh"
# https://stackoverflow.com/questions/1795976/can-the-unix-list-command-ls-output-numerical-chmod-permissions
function cls() {
  ls -l | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/) \
             *2^(8-i));if(k)printf("%0o ",k);print}'
}
# heroku related
alias h="heroku"
alias hc="heroku run rails console -a $1"
alias scheduler="heroku addons:open scheduler -a $1"
alias delete-redis="redis-cli flushall"

# Expose local Rails server
alias api="ngrok http 3000"
