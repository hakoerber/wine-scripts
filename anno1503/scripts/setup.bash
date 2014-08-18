#!/usr/bin/env bash

source $(dirname $0)/info.bash

winetricks sandbox
winetricks directmusic # needed for music

# add more application specific setup commands here
