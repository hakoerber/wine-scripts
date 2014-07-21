#!/usr/bin/env bash

source $(dirname $0)/info.bash

echo $WINEPREFIX

winetricks sandbox

# add more application specific setup commands here
