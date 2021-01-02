export PATH=/usr/local/opt/coreutils/libexec/gnubin:${PATH}
export MANPATH=//usr/local/opt/coreutils/libexec/gnuman:${MANPATH}
# export PATH=/usr/local/bin:$HOME/.nodebrew/current/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="/usr/local/bin:$PATH:~/.composer/vendor/bin"
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
# rust
export PATH="$HOME/.cargo/bin:$PATH"
# golang
export PATH="$HOME/go/bin:$PATH"
# libre-officeより先に来るように設定
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

function _update_ps1() {
    PS1="$(powerline-go -condensed -error $?)"
}

if [ "$TERM" != "linux" ] ; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

export XDEBUG_CONFIG="idekey=VSCODE"

# fzf bat がインストールされていること
export FZF_CTRL_T_COMMAND='rg --files --hidden --follow --glob "!.git/*" 2> /dev/null'
export FZF_CTRL_T_OPTS="--preview 'bat  --color=always --style=header,grid --line-range :100 {}'"

# EDITOR
export EDITOR='nvim'

eval "$(pyenv init -)"

# github cli tool
eval "$(gh completion -s bash)"

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/zerkshohei/.sdkman"
[[ -s "/Users/zerkshohei/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/zerkshohei/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/sbin:$PATH"
