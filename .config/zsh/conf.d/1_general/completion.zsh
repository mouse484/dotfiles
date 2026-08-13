COMPLATION_PATH="$ZDOTDIR/.completion"
mkdir -p "$COMPLATION_PATH"
fpath=($COMPLATION_PATH $fpath)

autoload -Uz compinit
compinit -C

local completion_commands=(
	'mise completion zsh'
	'starship completions zsh'
)

for cmd in $completion_commands; do
	local tool=${cmd%% *}
	local file=$COMPLATION_PATH/_${tool}
	[[ -f $file && $file -nt ${commands[$tool]-} ]] && continue
	${cmd} >$file 2>/dev/null
done
