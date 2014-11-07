#!/usr/bin/env bash

source "$(dirname $0)/../../common/settings.bash"
source "$(dirname $0)/info.bash"

INFOFILE="$(dirname $0)/info.bash"
EXECPATH="drive_c/Program Files/Steam/Steam.exe"
echo "executable: $EXECPATH"
OPTIONS=""
EXECOPTIONS="--no-dwrite"

"$STARTSCRIPT" "$INFOFILE" "$EXECPATH" "$OPTIONS" "$EXECOPTIONS"
