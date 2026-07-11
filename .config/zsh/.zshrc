for file in $ZDOTDIR/conf.d/*/*.zsh; do
	if [ -f $file ]; then
		source "$file"
	fi
done
