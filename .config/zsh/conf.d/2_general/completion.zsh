COMPLATION_PATH="$XDG_CACHE_HOME/zsh/completion"
mkdir -p "$COMPLATION_PATH"
fpath=($COMPLATION_PATH $fpath)

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
