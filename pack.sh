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
  zip -r "cetape-barracks.zip" . -x '.git*' 'cetape-barracks*.pk3' 'netradiant/*/*' 'pack.sh' 'README' '**.autosave.map' '**.bak' 'maps/cetape_et*' '**.xcf' 'maps/compile*' 'scripts/cetape_et.*'
elif [ "$RUNARGS" = "wolf" ]; then
  zip -r "cetape-barracks.zip" . -x '.git*' 'cetape-barracks*.pk3' 'netradiant/*/*' 'pack.sh' 'README' '**.autosave.map' '**.bak' 'maps/cetape.*' '**.xcf' 'maps/compile*' 'scripts/cetape.*'
else
  echo "Invalid argument. Exiting."
  exit
fi

mv "cetape-barracks.zip" "cetape-barracks.pk3"