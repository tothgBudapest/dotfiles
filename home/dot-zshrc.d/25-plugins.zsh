#!/bin/zsh
znap source ael-code/zsh-colored-man-pages
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-history-substring-search
znap source zsh-users/zsh-syntax-highlighting

# Fix compatibility with history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Fix word-jumping (⌥←/⌥→)
bindkey "^[b" backward-word
bindkey "^[f" forward-word
