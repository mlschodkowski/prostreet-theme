#!/usr/bin/env bash
# Symlinks Prostreet theme files into ~/.config. Existing files are not overwritten.
set -euo pipefail

repo="$(cd "$(dirname "$0")" && pwd)"
cfg="${XDG_CONFIG_HOME:-$HOME/.config}"

link() {
  local src="$repo/$1" dst="$cfg/$2"
  mkdir -p "$(dirname "$dst")"
  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    echo "skip (exists): $dst"
    return
  fi
  ln -sfn "$src" "$dst"
  echo "linked: $dst"
}

link nvim/colors/prostreet.lua nvim/colors/prostreet.lua
link helix/themes/prostreet.toml helix/themes/prostreet.toml
link ghostty/themes/prostreet ghostty/themes/prostreet
link zed/themes/Prostreet.json zed/themes/Prostreet.json
link tmux/themes/prostreet.conf tmux/themes/prostreet.conf
