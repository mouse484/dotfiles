COMPLATION_PATH="$ZDOTDIR/.completion"
mkdir -p "$COMPLATION_PATH"
fpath=($COMPLATION_PATH $fpath)

autoload -Uz compinit
compinit -C

local completion_commands=(
	'mise completion zsh'
	'starship completions zsh'
	'sheldon completions --shell zsh'
	'chezmoi completion zsh'
)

for cmd in $completion_commands; do
	local tool=${cmd%% *}
	eval "${cmd} >$COMPLATION_PATH/_${tool}" 2>/dev/null
done
