#!/bin/zsh
if command -v mise >/dev/null 2>&1; then
  # Use shim binaries
  eval "$(mise activate zsh --shims)"
  export PATH="$HOME/.local/share/mise/shims:$PATH"

  # Use shell environment
  #eval "$(mise activate zsh)"

  # Alias to execute tools through mise. Eg.:
  #     mise use node@20
  #     mise x -- node -v
  alias mx="mise x --"
fi
