# mise: https://mise.jdx.dev/
if command -v mise >/dev/null 2>&1; then
	mise_bin=$(command -v mise)
else
	mise_bin=$HOME/.local/bin/mise
fi

mise_cache=$ZSH_CACHE/.mise.activate.zsh
if [[ ! -f $mise_cache || $mise_cache -nt $mise_bin ]]; then
	$mise_bin activate zsh >|$mise_cache
fi
source $mise_cache

unset mise_bin mise_cache
