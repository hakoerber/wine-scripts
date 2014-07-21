#!/usr/bin/env bash

APPNAME="$(basename $(realpath $(dirname ${BASH_SOURCE[0]})/..))"

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

# you can add more variables for usage in hooks here
