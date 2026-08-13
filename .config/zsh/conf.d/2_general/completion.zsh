completion_path="$ZSH_CACHE/completion"
fpath=($completion_path $fpath)

completion_commands=(
	'mise completion zsh'
	'starship completions zsh'
)

for cmd in $completion_commands; do
	tool=${cmd%% *}
	file=$completion_path/_${tool}
	[[ -f $file && $file -nt ${commands[$tool]-} ]] && continue
	${cmd} >$file 2>/dev/null
done
