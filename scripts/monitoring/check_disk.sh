#!/bin/bash
LIMIT="${1:-80}"
USAGE=$(df -P / | awk 'NR==2 {gsub(/%/,"",$5); print $5}')
echo "Root disk usage: ${USAGE}%"
if [ "$USAGE" -ge "$LIMIT" ]; then echo "WARNING: disk usage is above ${LIMIT}%"; exit 2; fi
