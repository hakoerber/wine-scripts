#!/usr/bin/env bash

source "$(dirname $0)/../../common/settings.bash"
source $(dirname $0)/info.bash

winetricks sandbox
winetricks directmusic

#rm -r "$WINEPREFIX/drive_c/Program Files/Steam/SteamApps"
#ln -s "$HOME/.local/share/Steam/SteamApps" "$WINEPREFIX/drive_c/Program Files/Steam/SteamApps"

# for medieval 2 kingdoms
#winetrick dotnet35
