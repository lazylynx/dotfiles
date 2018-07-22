export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH:$HOME/Library/Android/sdk/platform-tools/:$GOBIN

macvim () {
    open -a MacVim $1
}

load_src () {
    test -e $1 && source $1
}

load_src $HOME/.gitaliases
load_src /usr/local/etc/bash_completion.d/git-prompt.sh
load_src /usr/local/etc/bash_completion.d/git-completion.bash

alias rdmstr='cat /dev/urandom | base64 | fold -w 16 | head -n 1'
alias ghl='ghq look `ghq list | peco`'
alias sed='gsed'
export LS_OPTIONS='--color=auto'
eval "$(dircolors -b)"
alias ls='gls $LS_OPTIONS'
