#!/usr/bin/env bash

source $(dirname $0)/info.bash

winetricks sandbox
winetricks mwo=force

# add more application specific setup commands here
