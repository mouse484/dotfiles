# dotfiles

## Setup

Install [mise](https://mise.jdx.dev/), then bootstrap and restart Zsh:

```sh
~/.local/bin/mise bootstrap --from https://github.com/mouse484/dotfiles.git --from-dir ~/dotfiles
```

Keep this checkout path: the configuration uses it as the dotfile source.

## Updates

```sh
mise bootstrap --dry-run          # Preview changes
mise bootstrap --update --upgrade # Update the checkout, packages and tools
```

For older installations, remove the previous `export ZDOTDIR=...` line from
`/etc/zsh/zshenv` or `/etc/zshenv`; it is now managed in `~/.zshenv`.

## Features

| Name                             | Description        |
| -------------------------------- | ------------------ |
| [mise](https://mise.jdx.dev/)    | Dev Environment    |
| [zsh](https://www.zsh.org/)      | Main Shell         |
| [Starship](https://starship.rs/) | Cross-Shell Prompt |
| [antidote](https://antidote.sh/) | Zsh Plugin Manager |
