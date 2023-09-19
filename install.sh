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
  # YAML
  "yaml-language-server"
  "yamllint"
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
if go help &>/dev/null; then
  go install golang.org/x/tools/gopls@latest
else
  echo "Go isn't installed, skipping packages"
fi

# latexindent
if podman --help &>/dev/null; then
  podman pull ghcr.io/cmhughes/latexindent.pl
else
  echo "Podman isn't installed, skipping latexindent"
fi
