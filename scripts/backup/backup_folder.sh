#!/bin/bash
SOURCE_DIR="$1"
BACKUP_DIR="${2:-/var/backups}"
if [ -z "$SOURCE_DIR" ]; then echo "Usage: sudo $0 source_directory [backup_directory]"; exit 1; fi
if [ ! -d "$SOURCE_DIR" ]; then echo "Source directory not found: $SOURCE_DIR"; exit 1; fi
mkdir -p "$BACKUP_DIR"
NAME=$(basename "$SOURCE_DIR")
DATE=$(date +%Y-%m-%d-%H%M%S)
OUTPUT="$BACKUP_DIR/${NAME}-${DATE}.tar.gz"
tar -czf "$OUTPUT" -C "$(dirname "$SOURCE_DIR")" "$NAME"
echo "Backup created: $OUTPUT"
