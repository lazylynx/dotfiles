export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH:$HOME/Library/Android/sdk/platform-tools/:$GOBIN

alias sed='gsed'
macvim () {
    open -a MacVim $1
}
load_src() {
    test -e $1 && source $1
    }

load_src $HOME/.gitrc
load_src $HOME/.gitaliases
load_src $HOME/.git-completion.bash

alias rdmstr='cat /dev/urandom | base64 | fold -w 16 | head -n 1'

alias ls='gls'
export LS_OPTIONS='--color=auto'
eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'
