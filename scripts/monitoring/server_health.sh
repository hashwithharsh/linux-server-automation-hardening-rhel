#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "===== Server health check ====="
echo "Time: $(date)"
echo "Host: $(hostname)"
echo
"$SCRIPT_DIR/check_disk.sh" 80
DISK_STATUS=$?
echo
"$SCRIPT_DIR/check_memory.sh" 80
MEMORY_STATUS=$?
echo
"$SCRIPT_DIR/check_services.sh"
SERVICE_STATUS=$?
echo
if [ "$DISK_STATUS" -ne 0 ] || [ "$MEMORY_STATUS" -ne 0 ] || [ "$SERVICE_STATUS" -ne 0 ]; then echo "Health check found a problem."; exit 2; fi
echo "Basic health check passed."
