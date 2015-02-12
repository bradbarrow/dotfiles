# colourful ls
if [[ -x "`whence -p dircolors`" ]]; then
  alias ls='ls --color=auto'
else
  alias ls='ls -G'
fi

alias v='vim'

alias x='exit'

alias be='bundle exec'

alias vmtime='sudo /etc/init.d/networking restart && sudo /etc/init.d/ntp restart'

alias pgen='openssl rand -hex'

# Git aliases
alias g='git'

alias gp='git push origin $(current_branch)'

alias gd='git fetch && git rebase origin/$(current_branch)'

alias ga='git add -p'

alias gc='git ci'

alias gs='git st -sb'

alias gdp='gd && gp'

alias gl='git log'

alias retag='ctags -R --exclude=.git --exclude=log --exclude=tmp *'

alias c='clear'

alias a='ack'

alias rr='rake routes'

alias vin='vagrant ssh'
alias vup='vagrant up'
alias valt='vagrant halt -f'

alias 2r='cd ~/flippa/flippa-rails'
alias 2p='cd ~/flippa/flippa'

alias fox="bx god -c config/god/all.rb && bx god start web"

ermahgerd() {
  curl -d "$*" http://erpers.herokuapp.com/ | say
}
