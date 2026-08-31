#!/bin/bash
# Test whether a TCP port is reachable.
set -u
if [ $# -ne 2 ]; then
  echo "Usage: $0 host port"
  exit 1
fi
if timeout 3 bash -c "</dev/tcp/$1/$2" 2>/dev/null; then
  echo "$1:$2 is reachable"
else
  echo "$1:$2 is not reachable"
  exit 1
fi
