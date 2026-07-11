for file in $ZDOTDIR/.config/*/*.zsh; do
	if [ -f $file ]; then
		source "$file"
	fi
done
