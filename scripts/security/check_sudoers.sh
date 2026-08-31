#!/bin/bash
# Validate sudo configuration before making changes.
set -u
if command -v visudo >/dev/null 2>&1; then
  visudo -c
else
  echo "visudo is not available."
  exit 1
fi
