alias ll='ls -al'

#\h:\W \u\$

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="\h:\W \u\$RED\$(parse_git_branch)\\[\e[0m\]$ "
#PS1="${TITLEBAR}\
#$BLUE[$RED\$(date +%H:%M)$BLUE]\
#$BLUE[$RED\u@\h:\w$GREEN\$(parse_git_branch)$BLUE]\
#$GREEN\$ "
#PS2='> '
#PS4='+ '
}
proml



# ALIASES FOR FAST WORK WITH GIT
alias gs='git status '
alias ga='git add -A'
alias gap='git add -p'
alias gc='git commit -a'
alias gcm='git commit -m '
alias gb='git branch '
alias gd='git diff'
alias go='git checkout '
alias gp='git push '
alias gpu='git pull '
alias gg='git add -A && git commit -a && git push'
alias gm='git merge --no-ff '
############################## EOF ############################

##
# Your previous /Users/nyaa/.bash_profile file was backed up as /Users/nyaa/.bash_profile.macports-saved_2012-01-10_at_19:07:28
##

# MacPorts Installer addition on 2012-01-10_at_19:07:28: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
