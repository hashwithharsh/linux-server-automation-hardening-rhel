#!/bin/bash
FILE="$1"
if [ -z "$FILE" ]; then
  echo "Usage: $0 /path/to/file"
  exit 1
fi
if [ ! -e "$FILE" ]; then
  echo "File does not exist: $FILE"
  exit 1
fi
ls -ld "$FILE"
stat -c "%a %U %G %n" "$FILE"
