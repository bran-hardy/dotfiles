#!/usr/bin/env bash
# Symlink config directories from `/dotfiles/config/ into ~/.config/

set -euo pipefail
DOTFILES="$HOME/dotfiles"
CONFIG="$HOME/.config"

mkdir -p "$CONFIG"

link() {
  local name="$1"
  local source="$DOTFILES/config/$name"
  local target="$CONFIG/$name"

  if [[ -e "$target" || -L "$target" ]]; then
    echo "Backing up existing $target -> $target.backup"
    mv "$target" "$target.backup"
  fi

  ln -s "$source" "$target"
  echo "Linked $name -> $source"
}

# Link starship manually
if [[ -e "$HOME/.config/starship.toml" || -L "$HOME/.config/starship.toml" ]]; then
  mv "$HOME/.config/starship.toml" "$HOME/.config/starship.toml.backup"
fi
ln -s "$DOTFILES/config/starship/starship.toml" "$HOME/.config/starship.toml"
echo "Linked starship.toml"

link hypr
link wezterm
link nvim
link zed
link waybar

echo "Done."
