#!/bin/bash
PATHS="${1:-/var /home /opt}"
SIZE="${2:-100M}"
echo "Searching for files larger than $SIZE under: $PATHS"
find $PATHS -type f -size +"$SIZE" -exec ls -lh {} \; 2>/dev/null | sort -k5 -hr | head -25
