#!/bin/bash
LOG_DIR="${1:-/var/log/myapp}"
DAYS="${2:-7}"
if [ ! -d "$LOG_DIR" ]; then echo "Directory not found: $LOG_DIR"; exit 1; fi
find "$LOG_DIR" -type f -name '*.log' -mtime +"$DAYS" -print -delete
echo "Removed log files older than $DAYS days."
