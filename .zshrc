export ZSH="/Users/aaron/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)
DISABLE_AUTO_TITLE="true"
function precmd () {
  window_title="\033]0;${PWD##*/}\007"
  echo -ne "$window_title"
}

source $ZSH/oh-my-zsh.sh

# User configuration

# Forever a WIP


#
# =========== ALIAS SETUP ===========
#


# Color scheme
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Random alias's
alias rosetta=arch -x86_64
alias psql=psql12

alias python=python3
alias pip=pip3

# Restart `coreaudio` process
# I constantly have issues with the audio daemon so this is just an easy way to fix
alias killaudio='sudo killall coreaudiod'

# Some services will give you the option to use your preffered editor
export EDITOR=vim

#
# =========== PATH SETUP ===========
#

# Added by MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# For homebrew
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

export PATH="/opt/local/lib/postgresql12/bin:$PATH"

# Go
# export GOPATH=$(go env GOPATH)

# NVM
export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)
NODE_GLOBALS+=(node nvm yarn)

_load_nvm() {
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

for cmd in "${NODE_GLOBALS[@]}"; do
eval "function ${cmd}(){ unset -f ${NODE_GLOBALS[*]}; _load_nvm; unset -f _load_nvm; ${cmd} \$@; }"
done
unset cmd NODE_GLOBALS


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
alias gti="printf \"
    __________________________________________________________
  /.---.==================================================.---.\\\\
 //     \\\===.--.===============.--.===============.--.===/     \\\\\\\\\\\  
|( _-=== )=/  . \\\=============/ \\\/ \\\=============/  . \\\=( _-=== )| 
 \\\\\\\\\\\\\\     /==\\\    /=============\\\\\\\\\/\\\//=======GTI===\\\    /==\\\     / /  
  \\\'---'===='--'===============\\\`--\\\`==============='--'===='---' /
  +------------------------------------------------------------+
 _+------------------------------------------------------------+_
 |_                                                            _|
\" && git"

