#!/usr/bin/env bash

source "$(dirname $0)/../../common/settings.bash"
source "$(dirname $0)/info.bash"

export INFOFILE="$(dirname $0)/info.bash"
export EXECPATH="drive_c/Program Files/return-of-the-king/ROTK.exe"
export OPTIONS="" #explorer /desktop=d1,1440x1050"

# working dir has to be game dir for the game to work
(cd "$WINEPREFIX/drive_c/Program Files/return-of-the-king/" && "$STARTSCRIPT" "$INFOFILE" "$EXECPATH" "$OPTIONS")
