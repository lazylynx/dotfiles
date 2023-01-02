bindkey -v
bindkey "^R" history-incremental-search-backward

autoload -Uz compinit && compinit
autoload -Uz vcs_info
autoload -Uz colors && colors

setopt prompt_subst
setopt correct

#zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
#fpath=(~/.zsh $fpath)
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{red}"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}"
zstyle ':vcs_info:*' formats "%F{blue}%u%c%b%f"
precmd () {
    vcs_info
    PROMPT="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜) %{$fg[cyan]%}%c"
    vcsinfo=${vcs_info_msg_0_}
    if [[ ${vcsinfo} ]]; then
        PROMPT=$PROMPT" %{$fg_bold[blue]%}[${vcsinfo}%{$fg_bold[blue]%}]"
    fi
    PROMPT=$PROMPT"%{$reset_color%} "
}

alias ghl='cd `ghq root`/`ghq list | peco`'

if [ "$(uname)" = "Darwin" ]; then
    alias ls='ls --color'
    macvim () {
        open -a MacVim $1
    }
else
    alias pbcopy='xsel --clipboard --input'
fi
