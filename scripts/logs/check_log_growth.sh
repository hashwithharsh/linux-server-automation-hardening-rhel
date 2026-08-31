#!/bin/bash
# Show the largest files under /var/log.
set -u
find /var/log -type f -printf '%s %p\n' 2>/dev/null |
  sort -nr | head -n 15 |
  awk '{printf "%.1f MB  %s\n", $1/1024/1024, substr($0,index($0,$2))}'
