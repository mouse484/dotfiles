# dotfiles

## how to use

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply mouse484
```

`/etc/zshenv` or `/etc/zsh/zshenv` to set `ZDOTDIR` for XDG compliance.
```sh
export ZDOTDIR=$HOME/.config/zsh
```

## Features

| Name                               | Description        |
| ---------------------------------- | ------------------ |
| [chezmoi](https://www.chezmoi.io/) | Dotfiles Manager   |
| [mise](https://mise.jdx.dev/)      | Dev Env            |
| [zsh](https://www.zsh.org/)        | Main Shell         |
| [Starship](https://starship.rs/)   | Cross-Shell Prompt |
| [Sheldon](https://sheldon.cli.rs/) | Zsh Plugin Manager |
