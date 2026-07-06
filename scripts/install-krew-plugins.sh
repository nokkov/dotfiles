#!/bin/bash
set -e

plugins=(
  ctx
  ns
  stern
  neat
  tree
  view-secret
  images
  resource-capacity
  get-all
  who-can
  score
  node-shell
)

for plugin in "${plugins[@]}"; do
  kubectl krew install "$plugin" 2>/dev/null || kubectl krew upgrade "$plugin"
done
