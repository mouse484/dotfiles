fpath=(${_BREW_PREFIX}/opt/antidote/share/antidote $fpath)
autoload -Uz antidote

zstyle ":antidote:bundle:*" min-age 7

zstyle ':antidote:static' zcompile 'yes'
zstyle ':antidote:bundle:*' zcompile 'yes'

plugins=$ZDOTDIR/plugins
static_plugins=$ZSH_CACHE/plugins.zsh

if [[ ! ${static_plugins} -nt ${plugins} ]]; then
	antidote bundle <${plugins} >|${static_plugins}
fi

[[ -f ${static_plugins} ]] && source ${static_plugins}

zstyle -e ':autocomplete:*:*' list-lines 'reply=( $(( LINES / 3 )) )'
