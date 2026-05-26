#!/bin/bash
echo "=== Largest log files under /var/log ==="
find /var/log -type f -exec du -h {} + 2>/dev/null | sort -hr | head -20
