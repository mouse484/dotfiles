# mise: https://mise.jdx.dev/
if command -v mise >/dev/null 2>&1; then
    eval "$(mise activate zsh)"
else
    eval "$(~/.local/bin/mise activate zsh)"
fi

# Starship prompt: https://starship.rs/
eval "$(starship init zsh)"

# Load Configurations
for file in $ZDOTDIR/.config/*.zsh; do
	if [ -f $file ]; then
		source "$file"
	fi
done
