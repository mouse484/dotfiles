function ghq() {
  local subcommand=$1

  case $subcommand in
  cd)
    local src=$(ghq list | fzf --preview "bat --color=always $(ghq root)/{}/README.md")
    if [[ -n $src ]]; then
      local path=$(ghq list -p "$src")
      if [[ -d $path ]]; then
        cd "$path" || return 1
      fi
    fi
    ;;
  *)
    command ghq "$@"
    ;;
  esac
}