#!/usr/bin/env bash
# 
# starts the given wine program after loading settings from its configuration 
# directory
#
# it looks for pre- and post-executing hooks in the following order:
# - {pre,post}-hook.bash in the application specific directory
# - {pre,post}-hook.bash in the base directory
# 
# $1: path to the application-specific information file
# $2: path to execute relative to the wine prefix
# $3: additional commands to pass to wine

set -e

exec_hook() {
    hook_name="$1"
    hook_path="$2"
    fallback_path="$3"

    echo "Looking for $hook_name at $hook_path"
    if [[ -x "$hook_path" ]] ; then
        echo "$hook_name found. executing."
        set +e
        "$hook_path" || true
        if [[ $? == 127 ]] ; then
            set -e
            echo "$hook_name did exit with code 127. triggering fallback hook."
            "$fallback_path" || true
        fi
        set -e
    else
        if [[ -e "$hook_path" ]] ; then
            echo "$hook_name not executable."
        else
            echo "$hook_name not found."
        fi
        echo "Falling back to default $hook_name at $fallback_path"
        if [[ -x "$fallback_path" ]] ; then
            echo "fallback $hook_name found. executing."
            "$fallback_path" || true
        else
            if [[ -e "$fallback_path" ]] ; then
                echo "fallback $hook_name not executable."
            else
                echo "fallback $hook_name not found."
            fi
            echo "No valid ${hook_name}s found."
        fi
    fi
}

print_exec() {
    echo "$*"
    "$@"
}

PREHOOK_SPECIFIC="$APPSCRIPTDIR/$PREHOOK_NAME"
POSTHOOK_SPECIFIC="$APPSCRIPTDIR/$POSTHOOK_NAME"


exec_hook "pre-hook" "$PREHOOK_SPECIFIC" "$PREHOOK_ALL"

print_exec wine $3 "$WINEPREFIX/$2" "$4"

exec_hook "post-hook" "$POSTHOOK_SPECIFIC" "$POSTHOOK_ALL"
