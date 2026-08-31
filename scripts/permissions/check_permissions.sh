#!/bin/bash
PATH_TO_CHECK="$1"
if [ -z "$PATH_TO_CHECK" ]; then echo "Usage: $0 path"; exit 1; fi
if [ ! -e "$PATH_TO_CHECK" ]; then echo "Path does not exist: $PATH_TO_CHECK"; exit 1; fi
ls -ld "$PATH_TO_CHECK"
stat -c 'Owner: %U  Group: %G  Mode: %A' "$PATH_TO_CHECK"
