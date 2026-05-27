#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/source"
  exit 1
fi
SRC="$1"
DEST="${BACKUP_DIR:-/var/backups}"
mkdir -p "$DEST"
ARCHIVE="$DEST/$(basename "$SRC")-$(date +%F-%H%M).tar.gz"
tar czf "$ARCHIVE" "$SRC"
echo "Backup written to $ARCHIVE"
ls -lh "$ARCHIVE"
