#!/usr/bin/env bash

source $(dirname $0)/info.bash

winetricks sandbox
winetricks d3dx9
winetricks vcrun2005

# add more application specific setup commands here
