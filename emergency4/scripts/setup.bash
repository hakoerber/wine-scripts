#!/usr/bin/env bash

source $(dirname $0)/info.bash

winetricks sandbox

cd "$WINEPREFIX"

regsvr32 quartz
regsvr32 devenum
