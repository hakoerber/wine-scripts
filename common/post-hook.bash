#!/usr/bin/env bash
echo "post-hook: toggling redshift"
pkill -USR1 redshift
