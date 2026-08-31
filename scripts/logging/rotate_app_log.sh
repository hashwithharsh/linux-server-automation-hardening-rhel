#!/bin/bash
LOG_FILE="${1:-/var/log/myapp.log}"
BACKUP_DIR="${2:-/var/log/myapp}"
if [ ! -f "$LOG_FILE" ]; then echo "Log file not found: $LOG_FILE"; exit 1; fi
mkdir -p "$BACKUP_DIR"
DATE=$(date +%Y-%m-%d-%H%M%S)
cp "$LOG_FILE" "$BACKUP_DIR/myapp-$DATE.log"
: > "$LOG_FILE"
echo "Log rotated to $BACKUP_DIR/myapp-$DATE.log"
