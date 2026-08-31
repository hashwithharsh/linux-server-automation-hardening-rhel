#!/bin/bash
PATH_TO_CHANGE="$1"
OWNER="$2"
MODE="$3"

if [ -z "$PATH_TO_CHANGE" ] || [ -z "$OWNER" ] || [ -z "$MODE" ]; then
    echo "Usage: sudo $0 path owner:group mode"
    exit 1
fi

if [ ! -e "$PATH_TO_CHANGE" ]; then
    echo "Path does not exist: $PATH_TO_CHANGE"
    exit 1
fi

# Check arguments before changing a file.
chown "$OWNER" "$PATH_TO_CHANGE"
chmod "$MODE" "$PATH_TO_CHANGE"
echo "Updated $PATH_TO_CHANGE"
ls -ld "$PATH_TO_CHANGE"

# Do not change anything when the target path is missing.
