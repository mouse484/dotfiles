mkdir -p "$ZSH_CACHE"

for file in "$ZDOTDIR"/conf.d/*/*.zsh(N); do
	source "$file"
done
