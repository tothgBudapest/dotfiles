#!/bin/zsh

# Disable auto-compilation
export ZNAP_NOCOMPILE=1

# Download Znap, if it's not there yet.
# https://github.com/marlonrichert/zsh-snap
[[ -r ~/.zshstuff/znap/znap.zsh ]] ||
  git clone --depth 1 -- \
    https://github.com/marlonrichert/zsh-snap.git ~/.zshstuff/znap
source ~/.zshstuff/znap/znap.zsh
