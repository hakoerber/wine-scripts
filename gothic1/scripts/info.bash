#!/usr/bin/env bash

mypath=${BASH_SOURCE[0]}
if [[ -z "$mypath" ]] ; then
    mypath="$0"
fi

APPNAME="$(basename $(realpath $(dirname $mypath)/..))"

source "$(dirname $mypath)/../../common/settings.bash"

export APPDIR="$PREFIXROOT/$APPNAME"
echo "application-specific directory: $APPDIR"

export WINEPREFIX="$APPDIR/prefix/"
echo "application prefix: $WINEPREFIX"

export APPSCRIPTDIR="$APPDIR/scripts"
echo "application script directory: $APPSCRIPTDIR"

export WINEDLLOVERRIDES=""
echo "dll overrides: $WINEDLLOVERRIDES"

export WINEARCH="win32"
echo "architecture: $WINEARCH"

export INIPATH="drive_c/Program Files/JoWooD/Gothic/system/GOTHIC.INI"
export MYINIPATH="$INIPATH.my"
