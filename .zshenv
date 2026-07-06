export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH="$ZDOTDIR/ohmyzsh"
export HISTFILE="$XDG_STATE_HOME/zsh/history"

export EDITOR="nvim"
export VISUAL="nvim"
export GIT_CONFIG_GLOBAL="$XDG_CONFIG_HOME/git/config"

alias dotfiles='git --work-tree=$HOME --git-dir=$HOME/.dotfiles'
