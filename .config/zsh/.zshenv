export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache
: ${ZSH_CACHE:=$XDG_CACHE_HOME/zsh}
# export XDG_RUNTIME_DIR=/run/user/$UID

# Don't run compinit from /etc/zsh/zshrc (global) — zsh-autocomplete owns compinit.
# https://github.com/marlonrichert/zsh-autocomplete
skip_global_compinit=1
