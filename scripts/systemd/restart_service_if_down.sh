#!/bin/bash
# Start a service if it is not currently running.
set -u
if [ $# -ne 1 ]; then
  echo "Usage: $0 service-name"
  exit 1
fi
if systemctl is-active --quiet "$1"; then
  echo "$1 is running"
else
  echo "$1 is not running, trying to start it"
  sudo systemctl start "$1"
  systemctl is-active --quiet "$1"
fi
