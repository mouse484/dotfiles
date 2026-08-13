# mise: https://mise.jdx.dev/
if ! mise_bin=$(command -v mise); then
	mise_bin=$HOME/.local/bin/mise
fi

cache -s $ZSH_CACHE/.mise.activate.zsh $mise_bin $mise_bin activate zsh

unset mise_bin
