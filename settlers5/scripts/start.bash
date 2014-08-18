#!/usr/bin/env bash

source "$(dirname $0)/../../common/settings.bash"
source "$(dirname $0)/info.bash"

INFOFILE="$(dirname $0)/info.bash"
EXECPATH="drive_c/Program Files/Ubisoft/Blue Byte/DIE SIEDLER - Das Erbe der Könige/Bin/settlershok.exe"
OPTIONS=

"$STARTSCRIPT" "$INFOFILE" "$EXECPATH" "$OPTIONS"
