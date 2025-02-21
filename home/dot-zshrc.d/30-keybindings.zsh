#!/bin.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Native macOS Behaviour #
# ---------------------- #
# Use Emacs keybindings
bindkey -e
# ⌥ + Left / Right (Jump by word)
bindkey "^[b" backward-word   # ⌥ + ←
bindkey "^[f" forward-word    # ⌥ + →
# ⌘ + Left / Right (Move to start/end of line)
bindkey "^A" beginning-of-line  # ⌘ + ←
bindkey "^E" end-of-line        # ⌘ + →
