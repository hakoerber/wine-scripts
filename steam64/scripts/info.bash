#!/usr/bin/env bash

APPNAME="$(basename $(realpath $(dirname ${BASH_SOURCE[0]})/..))"

export APPDIR="$PREFIXROOT/$APPNAME"
echo "application-specific directory: $APPDIR"

export WINEPREFIX="$PREFIXROOT/$APPNAME/prefix/"
echo "current prefix: $WINEPREFIX"

export APPSCRIPTDIR="$APPDIR/scripts"
echo "application script directory: $APPSCRIPTDIR"

export WINEDLLOVERRIDES=""
echo "dll overrides: $WINEDLLOVERRIDES"

export WINEARCH="win64"
echo "architecture: $WINEARCH"

