#!/bin/bash
# Show recent error and critical messages.
set -u
SINCE="${1:-24 hours ago}"
journalctl --since "$SINCE" -p err..alert --no-pager
