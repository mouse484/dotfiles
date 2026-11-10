# dotfiles

## how to use

#### 1. Install [mise](https://mise.jdx.dev/).

#### 2. Bootstrap the repository (mise 2026.11.5 or later).

Supported platforms: Debian/Ubuntu Linux and Apple Silicon macOS.
The configuration uses apt on Linux and mise's brew manager for antidote.
Intel macOS and Linux distributions without apt are not currently supported.

```sh
~/.local/bin/mise bootstrap --from https://github.com/mouse484/dotfiles.git
```

mise fetches the bootstrap configuration, then `[bootstrap.repos]` clones the
managed checkout to `~/src/github.com/mouse484/dotfiles`. Dotfiles are linked
from that fixed location into `~/.config`; no config directory option is needed.

For an existing checkout, you can also run `~/.local/bin/mise bootstrap` from
`~/src/github.com/mouse484/dotfiles`.

Restart Zsh after bootstrap. ZDOTDIR is configured in your own `~/.zshenv`.
If an earlier bootstrap added the ZDOTDIR export to `/etc/zsh/zshenv` or
`/etc/zshenv`, remove that old line manually; bootstrap no longer edits it.

Preview changes and update an existing setup:

```sh
mise bootstrap --dry-run
mise bootstrap --update
mise bootstrap --upgrade
```

`--update` refreshes the repository; `--upgrade` upgrades installed packages
and tools. They can be combined.

## Features

| Name                             | Description        |
| -------------------------------- | ------------------ |
| [mise](https://mise.jdx.dev/)    | Dev Environment    |
| [zsh](https://www.zsh.org/)      | Main Shell         |
| [Starship](https://starship.rs/) | Cross-Shell Prompt |
| [antidote](https://antidote.sh/) | Zsh Plugin Manager |
