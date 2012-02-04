export PATH=/usr/local/bin:$PATH

#export PWS="$HOME/.safe/pws"
alias pw='pws'

alias ll='ls -al'
#http://blog.willj.net/2011/05/31/setting-up-postgresql-for-ruby-on-rails-development-on-os-x/
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pgtest='ps auxwww | grep postgres'
alias psqlp='psql -h localhost -U postgres '

# Константы цветов
COLOR_YELLOW="\[\e[33;10m\]"
COLOR_RED="\[\e[31;10m\]"
COLOR_GREEN="\[\e[32;10m\]"
COLOR_BLUE="\[\e[34;10m\]"
COLOR_NONE="\[\e[0m\]"
COLOR_NONEP="\[\e[38;0m\]"

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

#\h:\W \u\$
PS1="\h:\W\$(parse_git_branch)\$ "


alias sshx='export DISPLAY=:0.0 && open /Applications/Utilities/X11.app && ssh -X'

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
alias gl='git log -1 HEAD '

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
############################## EOF ############################


##
# Your previous /Users/nyaa/.bash_profile file was backed up as /Users/nyaa/.bash_profile.macports-saved_2012-01-10_at_19:07:28
##

# MacPorts Installer addition on 2012-01-10_at_19:07:28: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
