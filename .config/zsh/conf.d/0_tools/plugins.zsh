fpath=(${_BREW_PREFIX}/opt/antidote/share/antidote $fpath)
autoload -Uz antidote

zstyle ":antidote:bundle:*" min-age 7

plugins=$ZDOTDIR/plugins
static_plugins=${plugins}.zsh

if [[ ! ${static_plugins} -nt ${plugins} ]]; then
	antidote bundle <${plugins} >|${static_plugins}
fi

[[ -f ${static_plugins} ]] && source ${static_plugins}

zstyle -e ':autocomplete:*:*' list-lines 'reply=( $(( LINES / 3 )) )'
