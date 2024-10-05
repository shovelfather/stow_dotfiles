# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

#Setup for starship PS1 prompt fanciness, along with zoxide, for fast
#directory swapping
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source "${ZPLUG_HOME}.zplug/init.zsh"

#Need this to manage Ruby envs
if [[  -d "${HOME}/.rbenv" ]]; then
  eval "$(${HOME}/.rbenv/bin/rbenv init - zsh)"
fi

# Configure fzf to open in a tmux pane if it was called in a tmux session;
# otherwise, open as normal.
if  { [ -n "$TMUX" ]; } then
  export FZF_TMUX_OPTS="-d 38%"
else
  export FZF_TMUX_OPTS=""
  export FZF_TMUX=0
fi

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" ||
  printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

bindkey -v
zplug "jeffreytse/zsh-vi-mode"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug load

FZF_CTRL_R_COMMAND= source <(fzf --zsh)

# Load atuin shell integration

eval "$(atuin init zsh)"
bindkey '^r' atuin-search-vicmd
bindkey '^r' atuin-search-viins
bindkey '^r' atuin-search

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
[[ -d $PYENV_ROOT/bin ]] && eval "$(pyenv init -)"
[[ -d $PYENV_ROOT/bin ]] && eval "$(pyenv virtualenv-init -)"
