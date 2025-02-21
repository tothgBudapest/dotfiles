#!/bin/zsh
MISE_UPDATE_FILE=~/.mise_last_update
if [[ ! -f $MISE_UPDATE_FILE ]] || [[ $(find $MISE_UPDATE_FILE -mtime +7) ]]; then
  echo -ne "Checking for Mise updates...\r"
  mise update >/dev/null 2>&1
  OUTDATED=$(mise outdated)
  if [[ -n "$OUTDATED" ]]; then
    echo -ne "⛔️ Mise is outdated.        \n"
  else
    echo -ne "✅ Mise is up to date.      \n"
  fi
  touch $MISE_UPDATE_FILE
fi
