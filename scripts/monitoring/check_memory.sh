#!/bin/bash
LIMIT="${1:-80}"
USED=$(free | awk '/Mem:/ {printf "%.0f", ($3/$2)*100}')
echo "Memory usage: ${USED}%"
if [ "$USED" -ge "$LIMIT" ]; then echo "WARNING: memory usage is above ${LIMIT}%"; exit 2; fi
