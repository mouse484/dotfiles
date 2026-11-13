function ghq() {
  local subcommand=$1

  case $subcommand in
  cd)
    local src=$(command ghq list | fzf --preview "bat --color=always $(command ghq root)/{}/README.md")
    if [[ -n $src ]]; then
      local path=$(command ghq list -p "$src")
      if [[ -d $path ]]; then
        cd "$path" || return 1
      fi
    fi
    ;;
  get|clone)
    shift
    local arg
    for arg in "$@"; do
      case $arg in
        --bare|--clean-bare|--help|-h) command ghq "$subcommand" "$@"; return $? ;;
      esac
    done
    command ghq "$subcommand" --clean-bare "$@"
    ;;
  *)
    command ghq "$@"
    ;;
  esac
}