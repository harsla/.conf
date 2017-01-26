function YesOrNo() {
  read -p "$1 (y/N)? " choice
  case "$choice" in 
    y|Y ) return 1;;
    n|N|* ) return 0;;
  esac
}

function CloudDotfileSymlink() {
  local priv="$HOME/ownCloud/dotfiles_private"
  if [[ -d $priv ]]; then
    local src=$priv/$1
    local target=$HOME/.$1
    rm -rf $target
    ln -sf $src $target
    echo "link: $target -> $src"
    return 0
  else
    echo "nolink: missing cloud path $priv"
    return 1
  fi
}

function DotconfSymlink() {
  local src=$MY_DOTFILES/$1
  local target=$HOME/.$1
  rm -rf $target
  ln -sf $src $target
  echo "link: $target -> $src"
}

function CheckInstall() {
  hash $1 >/dev/null 2>&1 || YesOrNo $1
}
