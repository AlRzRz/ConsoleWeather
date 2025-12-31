#!/usr/bin/env bash
set -e

FUNCTION_BLOCK='
# --- weather helper (wttr.in) ---
weather() {
  if [ -z "$1" ]; then
    echo "Usage: weather <city>"
    return 1
  fi
  curl "https://wttr.in/$1"
}
# --- end weather helper ---
'

if [ -n "$ZSH_VERSION" ]; then
  RC_FILE="$HOME/.zshrc"
elif [ -n "$BASH_VERSION" ]; then
  RC_FILE="$HOME/.bashrc"
else
  RC_FILE="$HOME/.profile"
fi

touch "$RC_FILE"

if grep -q "weather helper (wttr.in)" "$RC_FILE"; then
  echo "weather already installed in $RC_FILE"
else
  printf "\n%s\n" "$FUNCTION_BLOCK" >> "$RC_FILE"
  echo "Installed weather in $RC_FILE"
fi

echo
echo "Reload your shell with:"
echo "  source \"$RC_FILE\""
echo
echo "Then run:"
echo "  weather dubai"

