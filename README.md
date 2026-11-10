# dotfiles

## how to use

#### 1. Install [mise](https://mise.jdx.dev/).

Ensure `mise` is on PATH. For a mise.run installation, add `~/.local/bin`
to PATH before bootstrap:

```sh
export PATH="$HOME/.local/bin:$PATH"
```

#### 2. Bootstrap the repository (mise 2026.11.5 or later).

Supported platforms: Debian/Ubuntu Linux and Apple Silicon macOS.
The configuration uses apt on Linux and mise's brew manager for antidote.
Intel macOS and Linux distributions without apt are not currently supported.

```sh
mise bootstrap --from https://github.com/mouse484/dotfiles.git --from-dir ~/src/github.com/mouse484/dotfiles
```

The checkout location is fixed to `~/src/github.com/mouse484/dotfiles`.
`--from-dir` makes the bootstrap checkout and the dotfile source the same
repository. No config directory option is needed: bootstrap links the files
into `~/.config`.

To test another branch on a fresh machine, append `?ref=<branch>` to the URL:

```sh
mise bootstrap --from 'https://github.com/mouse484/dotfiles.git?ref=fix/mise-bootstrap-shell-init' --from-dir ~/src/github.com/mouse484/dotfiles
```

`[bootstrap.repos]` does not pin a branch, so bootstrap preserves the selected
branch. An existing checkout is reused; switch its branch explicitly with Git
before testing another branch. Add `--update` to refresh a reused checkout.

For an existing checkout, you can also run `mise bootstrap` from
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
