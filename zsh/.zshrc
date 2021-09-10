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

# Customize to your needs...
source ~/.zplug/init.zsh

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
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

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
