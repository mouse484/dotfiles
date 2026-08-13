# eza aliases (replaces z-shell/zsh-eza)
eza_params=(--git --icons --group --group-directories-first --time-style=long-iso --color-scale=all)

alias ls='eza ${eza_params[@]}'
alias l='eza --git-ignore ${eza_params[@]}'
alias ll='eza --all --header --long ${eza_params[@]}'
alias llm='eza --all --header --long --sort=modified ${eza_params[@]}'
alias la='eza -lbhHigUmuSa ${eza_params[@]}'
alias lx='eza -lbhHigUmuSa@ ${eza_params[@]}'
alias lt='eza --tree ${eza_params[@]}'
alias tree='eza --tree ${eza_params[@]}'
