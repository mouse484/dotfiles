# dotfiles

## how to use

#### 1. Install [mise](https://mise.jdx.dev/).

#### 2. Bootstrap the repository (mise 2026.11.5 or later).

Supported platforms: Debian/Ubuntu Linux and Apple Silicon macOS.
The configuration uses apt on Linux and mise's brew manager for antidote.
Intel macOS and Linux distributions without apt are not currently supported.

```sh
mkdir -p ~/src/github.com/mouse484
git clone https://github.com/mouse484/dotfiles.git ~/src/github.com/mouse484/dotfiles
cd ~/src/github.com/mouse484/dotfiles
~/.local/bin/mise bootstrap
```

The checkout location is fixed to `~/src/github.com/mouse484/dotfiles`.
Run the initial bootstrap from that directory; mise discovers `.config/mise`
and deploys the configuration to `~/.config`.

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
