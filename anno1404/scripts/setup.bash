#!/usr/bin/env bash

source $(dirname $0)/info.bash

winetricks sandbox
winetricks d3dx9
winetricks d3dx10
winetricks corefonts

# add more application specific setup commands here
