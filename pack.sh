#!/bin/sh

set -eu

RUNARGS=""
if [ "$#" -gt 0 ]; then
  RUNARGS="$1"
else 
  echo "No argumets given, please run again with arguments 'truecombat' or 'wolf' to pack."
  exit
fi

if [ "$RUNARGS" = "truecombat" ]; then
  zip -r "cetape-barracks.pk3" . -x '.git*' 'cetape-barracks*.pk3' 'netradiant/*/*' 'pack.sh' 'maps/*.autosave.map' 'maps/*.bak' 'maps/cetape_et*'
elif [ "$RUNARGS" = "wolf" ]; then
  zip -r "cetape-barracks.pk3" . -x '.git*' 'cetape-barracks*.pk3' 'netradiant/*/*' 'pack.sh' 'maps/*.autosave.map' 'maps/*.bak' 'maps/cetape.*'
else
  echo "Invalid argument. Exiting."
  exit
fi