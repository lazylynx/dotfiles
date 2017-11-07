export GOPATH=$HOME/go

export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools/

alias sed='gsed'
macvim () {
    open -a MacVim $1
}

test -e $HOME/.gitrc && source $HOME/.gitrc
