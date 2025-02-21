#!/bin/zsh
BREW_UPDATE_FILE=~/.brew_last_update
if [[ ! -f $BREW_UPDATE_FILE ]] || [[ $(find $BREW_UPDATE_FILE -mtime +7) ]]; then
  echo -ne "Checking for Homebrew updates...\r"
  brew update >/dev/null 2>&1
  OUTDATED=$(brew outdated)
  if [[ -n "$OUTDATED" ]]; then
    echo -ne "⛔️ Homebrew is outdated.        \n"
  else
    echo -ne "✅ Homebrew is up to date.      \n"
  fi
  touch $BREW_UPDATE_FILE
fi
