#!/usr/bin/env bash

source $(dirname $0)/common.bash

winetricks sandbox
winetricks directmusic

# add more application specific setup commands here
