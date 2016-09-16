# Setup color scheme
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Random alias's
alias python=python3
alias pip=pip3

# Setup thefuck
alias fuck='eval $(thefuck $(fc -ln -1))'
alias FUCK='fuck'

# Quick command for Sublime Text
alias st='open -a Sublime\ Text.app'
alias ST='st'

alias go='export GOPATH=$PWD && /usr/local/go/bin/go'

# Incase sombody needs to know what editor I use
export EDITOR=vim

# function for setting terminal titles in OSX
function title {
  printf "\033]0;%s\007" "$1"
}

