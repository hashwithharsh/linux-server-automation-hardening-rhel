#!/bin/bash
SVC="$1"
if [ -z "$SVC" ]; then
  echo "Usage: $0 service-name"
  exit 1
fi
systemctl is-active --quiet "$SVC" && echo "$SVC is active" || echo "$SVC is NOT active"
systemctl status "$SVC" --no-pager -l | head -15
