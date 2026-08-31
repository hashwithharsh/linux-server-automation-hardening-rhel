#!/bin/bash
# Show recent journal entries for one systemd service.
set -u
if [ $# -ne 1 ]; then
  echo "Usage: $0 service-name"
  exit 1
fi
journalctl -u "$1" -n 100 --no-pager
