#!/bin/bash
BACKUP_FILE="$1"
if [ -z "$BACKUP_FILE" ]; then echo "Usage: $0 backup.tar.gz"; exit 1; fi
if [ ! -f "$BACKUP_FILE" ]; then echo "Backup not found: $BACKUP_FILE"; exit 1; fi
if tar -tzf "$BACKUP_FILE" >/dev/null; then echo "Backup looks OK: $BACKUP_FILE"; else echo "Backup could not be read: $BACKUP_FILE"; exit 1; fi
