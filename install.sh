#!/bin/bash

# Required packages
packages=(
  # LaTeX
  "texlab"
  # Lua
  "stylua"
  "luacheck"
  # Shell
  "shfmt"
  "shellcheck"
)

# Install packages
for pck in "${packages[@]}"; do
  if pacman -Qi "$pck" &>/dev/null; then
    echo "$pck already installed"
  else
    echo "Installing $pck..."
    pacman -S "$pck"
  fi
done

# Go packages
if go --help &>/dev/null; then
  echo "Go isn't installed, skipping packages"
else
  go install golang.org/x/tools/gopls@latest
fi
