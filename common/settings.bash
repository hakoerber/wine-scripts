#!/usr/bin/env bash

# better than $0 as it works when the file is sourced instead of executed
SCRIPTPATH="${BASH_SOURCE[0]}"

export WINEDEBUG=-all
export PREFIXROOT="$HOME/games/wine"

export PREHOOK_NAME="pre-hook.bash"
export POSTHOOK_NAME="post-hook.bash"

export PREHOOK_ALL="$(realpath $(dirname "$SCRIPTPATH")/$PREHOOK_NAME)"
export POSTHOOK_ALL="$(realpath $(dirname "$SCRIPTPATH")/$POSTHOOK_NAME)"

export STARTSCRIPT="$(dirname "$SCRIPTPATH")/start.bash"
