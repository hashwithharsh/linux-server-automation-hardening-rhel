#!/bin/bash
ZOMBIES=$(ps -eo pid,ppid,state,cmd | awk '$3=="Z"')
if [ -z "$ZOMBIES" ]; then
  echo "No zombie processes found"
else
  echo "=== Zombie processes ==="
  echo "$ZOMBIES"
fi
