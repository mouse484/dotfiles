fpath=(${_BREW_PREFIX}/opt/antidote/share/antidote $fpath)
autoload -Uz antidote

zstyle ":antidote:bundle:*" min-age 7

zstyle ':antidote:static' zcompile 'yes'
zstyle ':antidote:bundle:*' zcompile 'yes'

plugins=$ZDOTDIR/plugins

cache -s $ZSH_CACHE/plugins.zsh $plugins antidote bundle <$plugins

zstyle -e ':autocomplete:*:*' list-lines 'reply=( $(( LINES / 3 )) )'
