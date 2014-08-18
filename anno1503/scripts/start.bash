#!/usr/bin/env bash

source "$(dirname $0)/info.bash"

export INFOFILE="$(dirname $0)/info.bash"
export EXECPATH="drive_c/Program Files/ANNO 1503/1503Startup.exe"
export OPTIONS=""

(cd "$WINEPREFIX/$(dirname "$EXECPATH")" && "$STARTSCRIPT" "$INFOFILE" "$EXECPATH" "$OPTIONS")
