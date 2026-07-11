# mise: https://mise.jdx.dev/
if command -v mise >/dev/null 2>&1; then
    eval "$(mise activate zsh)"
else
    eval "$(~/.local/bin/mise activate zsh)"
fi
