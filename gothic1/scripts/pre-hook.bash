#!/usr/bin/env bash

echo "overwriting $WINEPREFIX/$INIPATH with $WINEPREFIX/$MYINIPATH"
cp "$WINEPREFIX/$MYINIPATH" "$WINEPREFIX/$INIPATH"

# exiting with code 127 triggers executing of the default hook
exit 127
