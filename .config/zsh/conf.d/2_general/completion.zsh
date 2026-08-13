completion_path="$ZSH_CACHE/completion"
fpath=($completion_path $fpath)

completion_commands=(
	'mise completion zsh'
	'starship completions zsh'
)

for cmd in $completion_commands; do
	tool=${cmd%% *}
	cache $completion_path/_${tool} ${commands[$tool]-} ${(z)cmd} 2>/dev/null
done
