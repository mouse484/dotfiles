function _ghq-fzf(){
  local src=$(ghq list | fzf --preview "bat --color=always $(ghq root)/{}/README.md")
  echo "$src"
}

function ghq() {
  local subcommand=$1

  case $subcommand in
    cd)
    local src=$(_ghq-fzf)
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

function git(){
  local subcommand=$1

  case $subcommand in
    clone)
    command ghq get "${@:2}"
    ;;
    *)
    command git "$@"
    ;;
  esac
}