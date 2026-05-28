#!/bin/bash
BACKUP_DIR="${BACKUP_DIR:-/var/backups}"
DAYS="${1:-7}"
echo "Removing backups older than $DAYS days from $BACKUP_DIR"
find "$BACKUP_DIR" -name "*.tar.gz" -mtime +"$DAYS" -print -delete
