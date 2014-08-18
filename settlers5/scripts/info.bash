#!/usr/bin/env bash

mypath=${BASH_SOURCE[0]}
if [[ -z "$mypath" ]] ; then
    mypath="$0"
fi

APPNAME="$(basename $(realpath $(dirname $mypath)/..))"

source "$(dirname $mypath)/../../common/settings.bash"

export APPDIR="$PREFIXROOT/$APPNAME"
echo "application-specific directory: $APPDIR"

export WINEPREFIX="$PREFIXROOT/$APPNAME/prefix/"
echo "current prefix: $WINEPREFIX"

export APPSCRIPTDIR="$APPDIR/scripts"
echo "application script directory: $APPSCRIPTDIR"

export WINEDLLOVERRIDES="quartz,devenum=n"
echo "dll overrides: $WINEDLLOVERRIDES"

export WINEARCH="win32"
echo "architecture: $WINEARCH"
