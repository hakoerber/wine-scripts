#!/usr/bin/env bash

APPNAME="gothic2-dndr"

source "$(dirname $0)/../settings.bash"

export WINEPREFIX="$PREFIXROOT/$APPNAME/prefix/"
echo "current prefix: $WINEPREFIX"

export WINEDLLOVERRIDES=""
echo "dll overrides: $WINEDLLOVERRIDES"

export WINEARCH="win32"
echo "architecture: $WINEARCH"

INIPATH="drive_c/Program Files/JoWooD/Gothic II/System/Gothic.ini"
MYINIPATH="$INIPATH.my"
