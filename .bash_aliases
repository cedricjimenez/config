# --------------------------------------------------------
# COMMANDS
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias rgrep='rgrep --color=auto'

# --------------------------------------------------------
# GIT
alias gfet='git fetch origin'
alias gcom='git commit'
function gcomp {
  git commit;git push origin $@;
}
function gupd {
    gfet;gpul $@;
}
alias gpul='git pull origin'

alias gche='git checkout'
__git_complete gche _git_checkout

alias gpus='git push origin'
__git_complete gpus _git_checkout

alias gdif='git diff'
alias gadd='git add'
alias gsta='git status'
alias gmer='git merge'
alias cu='composer update'
alias gb='git checkout -b'
alias gd='git branch -D'
alias gp='git pull origin'
alias gm='git merge'
alias gfp='gfet & gpul'

# --------------------------------------------------------
# Services
alias restartnginx='sudo /etc/init.d/nginx restart'
alias restartfpm='sudo /etc/init.d/php5-fpm restart'
alias restarthhvm='sudo /etc/init.d/hhvm restart'
alias restartmemcache='sudo /etc/init.d/memcached restart'
alias restartredis='redis-cli flushall'
alias restartvarnish='sudo /etc/init.d/varnish restart'
alias bigbang='restartmemcache && restartfpm && restartvarnish && restarthhvm && restartredis && restartnginx'

# --------------------------------------------------------
# Logs
alias tailerrlog='sudo tail -f /var/log/syslog /var/log/php-cli.log /var/log/nginx/*error.log /var/log/php5-fpm.log /var/log/hhvm/*error.log'
alias tailacclog='sudo tail -f /var/log/nginx/*access.log /var/log/hhvm/*access.log'

# --------------------------------------------------------
# Christmas
function christmas {
    clear;while :;do echo $LINES $COLUMNS $(($RANDOM%$COLUMNS)) $(printf "\xE2\x9D\x84\n");sleep 0.1;done|awk '{a[$3]=0;for(x in a) {o=a[x];a[x]=a[x]+1;printf "\033[%s;%sH ",o,x;printf "\033[%s;%sH%s \033[0;0H",a[x],x,$4;}}'
}
