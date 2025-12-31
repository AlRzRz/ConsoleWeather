Weather CLI Helper

A tiny shell helper to fetch weather from wttr.in directly in your terminal.

Example

weather dubai

weather london

weather tokyo

Installation

Clone the repo and run the setup script:

chmod +x setup.sh

./setup.sh

Reload your shell configuration:

source ~/.bashrc # Bash

source ~/.zshrc # Zsh

Usage

weather <city>

Examples

weather dubai

weather newyork

Notes

If no city is provided, the script prints:

Usage: weather <city>

No dependencies beyond curl

Bash & Zsh compatible

Idempotent and safe; won’t duplicate installation

Uninstall

Remove the weather function block from your shell config:

~/.bashrc (Bash) or ~/.zshrc (Zsh)

Reload your shell
