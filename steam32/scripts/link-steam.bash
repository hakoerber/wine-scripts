#!/usr/bin/env bash

source "$(dirname $0)/../../common/settings.bash"
source $(dirname $0)/info.bash

rm -vr "$WINEPREFIX/drive_c/Program Files/Steam/SteamApps"
ln -vs "$HOME/.local/share/Steam/SteamApps" "$WINEPREFIX/drive_c/Program Files/Steam/SteamApps"
