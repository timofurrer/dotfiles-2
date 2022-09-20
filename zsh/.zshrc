#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Configure plugins
zplug "plugins/git",   from:oh-my-zsh
zplug "junegunn/fzf"

# change autosuggest accept key binding to Ctrl + Space
bindkey '^ ' autosuggest-accept

# add user specific $HOME/bin to $PATH
export PATH="$HOME/bin:$PATH"

# add go to the PATH
export PATH="$HOME/bin/go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

# add pyenv path to $PATH
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#if command -v pyenv 1>/dev/null 2>&1; then
#  eval "$(pyenv init --path)"
#  eval "$(pyenv init -)"
#  eval "$(pyenv virtualenv-init -)"
#fi

# poetry
export POETRY_ROOT="$HOME/.poetry"
export PATH="$POETRY/bin:$PATH"
#source $POETRY_ROOT/env

# Install fzf bindings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# don't share history (who does that anyways?!)
setopt no_share_history
unsetopt share_history

# k3d completion
source "$HOME/.k3d_completion"

# local zshrc configuration
source ~/.zshrc-local

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault
complete -o nospace -C /usr/local/bin/terraform terraform
source ~/.flux_completion.zsh

source "$HOME/.docatl.zsh-completion"

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# Added by GDK bootstrap
source /Users/furrert/.asdf/asdf.sh
export PATH="/usr/local/opt/libressl/bin:$PATH"

# To sign commits with Git
export GPG_TTY=$(tty)

export PATH="${PATH}:${HOME}/.krew/bin"

export PATH="$HOME/.local/bin:$PATH"
