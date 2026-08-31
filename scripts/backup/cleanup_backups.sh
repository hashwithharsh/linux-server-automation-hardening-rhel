#!/bin/bash
BACKUP_DIR="${1:-/var/backups}"
DAYS="${2:-7}"
if [ ! -d "$BACKUP_DIR" ]; then echo "Backup directory not found: $BACKUP_DIR"; exit 1; fi
find "$BACKUP_DIR" -type f -name '*.tar.gz' -mtime +"$DAYS" -print -delete
echo "Old backups cleaned up."

# Keep this simple so it is easy to run from cron later.

# Print the directory so I can see what was removed.
