#!/bin/zsh
if command -v starship >/dev/null 2>&1; then
  znap eval starship 'starship init zsh'
  znap prompt
fi
