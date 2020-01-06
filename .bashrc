function open_with_nv() {
    local path="$(ls | fzf --layout=reverse --height 30)"
    if [ "${path}" ]; then
        cd "${path}"
    fi
}
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias nv='nvim'
alias vim='nvim'
alias vi='nvim'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ..2='cd ../..'
alias ..3='cd ../../..'

alias here="open_with_nv"

