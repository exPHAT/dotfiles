# Forever a WIP


#
# =========== ALIAS SETUP ===========
#


# Color scheme
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Random alias's
alias python=python3.8
alias pip=pip3.8

# Quick command for Sublime Text
alias st='open -a Sublime\ Text.app'
alias ST='st'

# Restart `coreaudio` process
alias audio='sudo killall coreaudiod'

# Some services will give you the option to use your preffered editor
export EDITOR=vim

#
# =========== PATH SETUP ===========
#

# Standard stuff (added by MacPorts)
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Go
export GOPATH=$(go env GOPATH)

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
DEFAULT_NODE_VER='default';
while [ -s "$NVM_DIR/alias/$DEFAULT_NODE_VER" ]; do
  DEFAULT_NODE_VER="$(<$NVM_DIR/alias/$DEFAULT_NODE_VER)"
done;
export PATH="$NVM_DIR/versions/node/v${DEFAULT_NODE_VER#v}/bin:$PATH"
alias nvm="unalias nvm; [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"; nvm $@"

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Swift
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

#
# =========== FUNCTION SETUP ===========
#

# Custom function for `thefuck` so that it doesn't lag when opening a new shell
function fuck {
  if [ !$FUCK_CONFIGURED ]
  then
    eval $(thefuck --alias fuckfuck)
    export FUCK_CONFIGURED=1
  fi

  fuckfuck
}

# Nice for setting terminal titles in MacOS
function title {
  printf "\033]0;%s\007" "$1"
}

#
# =========== DUMB SHIT SETUP ===========
#

# Beacuse why not
alias gti="echo \"
    __________________________________________________________
  /.---.==================================================.---.\\\\
 //     \\\===.--.===============.--.===============.--.===/     \\\\\\ 
|( _-=== )=/  . \\\=============/ \\\/ \\\=============/  . \\\=( _-=== )| 
\\\ \\\     /==\\\    /=============\\\\\\\\\/\\\//=======GTI===\\\    /==\\\     / /  
 \\\ '---'===='--'===============\\\`--\\\`==============='--'===='---' /
  +------------------------------------------------------------+
 _+------------------------------------------------------------+_
 |_                                                            _|
\" && git"
