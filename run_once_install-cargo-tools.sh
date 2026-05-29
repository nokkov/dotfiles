#!/bin/bash
set -e

tools=(
  bat
  bottom        
  du-dust       
  eza
  fd-find       
  procs
  ripgrep       
  sd
  zoxide
)

for tool in "${tools[@]}"; do
  cargo install "$tool"
done
