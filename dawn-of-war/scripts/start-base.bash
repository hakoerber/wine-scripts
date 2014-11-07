#!/usr/bin/env bash

source "$(dirname $0)/info.bash"

export INFOFILE="$(dirname $0)/info.bash"
export EXECPATH="drive_c/Program Files/THQ/Dawn of War/WinterAssault.exe"
export OPTIONS="" #"explorer /desktop=d1,1920x1080"

cd "$(dirname "$WINEPREFIX/$EXECPATH")"
"$STARTSCRIPT" "$INFOFILE" "$EXECPATH" "$OPTIONS"
