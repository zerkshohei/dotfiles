export PATH=/usr/local/opt/coreutils/libexec/gnubin:${PATH}
export MANPATH=//usr/local/opt/coreutils/libexec/gnuman:${MANPATH}
export PATH=/usr/local/bin:$HOME/.nodebrew/current/bin:$PATH
export PATH="/usr/local/bin:$PATH:~/.composer/vendor/bin"
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
# export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
# libre-officeより先に来るように設定
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PS1='\W $ '
export XDEBUG_CONFIG="idekey=VSCODE"

# fzf bat がインストールされていること
export FZF_CTRL_T_COMMAND='rg --files --hidden --follow --glob "!.git/*" 2> /dev/null' 
export FZF_CTRL_T_OPTS="--preview 'bat  --color=always --style=header,grid --line-range :100 {}'"

# EDITOR
export EDITOR='nvim'

eval "$(pyenv init -)"

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/zerkshohei/.sdkman"
[[ -s "/Users/zerkshohei/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/zerkshohei/.sdkman/bin/sdkman-init.sh"
