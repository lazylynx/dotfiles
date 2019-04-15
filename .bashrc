export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH:$HOME/Library/Android/sdk/platform-tools/:$GOBIN


load_src () {
    test -e $1 && source $1
}

load_src $HOME/.gitaliases
load_src /usr/local/etc/bash_completion.d/git-prompt.sh
load_src /usr/local/etc/bash_completion.d/git-completion.bash

alias rdmstr='cat /dev/urandom | tr -dc "[:graph:]" | fold -w 16 | head -1'
alias ghl='ghq look `ghq list | peco`'

if [ "$(uname)" == "Darwin" ]; then
    alias sed='gsed'
    export LS_OPTIONS='--color=auto'
    eval "$(dircolors -b)"
    alias ls='gls $LS_OPTIONS'
    macvim () {
        open -a MacVim $1
    }
else
    alias pbcopy='xsel --clipboard --input'
fi
