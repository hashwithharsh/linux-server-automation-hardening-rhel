#!/bin/bash
# Simple DNS lookup check.
set -u
HOST="${1:-google.com}"
if getent hosts "$HOST" >/dev/null 2>&1; then
  echo "DNS lookup works for $HOST"
  getent hosts "$HOST"
else
  echo "DNS lookup failed for $HOST"
  exit 1
fi
