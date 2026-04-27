#!/usr/bin/env bash
set -euo pipefail

THEME="$HOME/.config/zellij/themes/matugen.kdl"

sed -E -i 's/([[:space:]])([0-9]+), ([0-9]+), ([0-9]+)\)/\1\2 \3 \4/g' "$THEME"
touch $HOME/.config/zellij/config.kdl
