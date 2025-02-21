#!/bin.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "^[b" backward-word # Fix word-jumping (⌥←)
bindkey "^[f" forward-word  # Fix word-jumping (⌥→)
