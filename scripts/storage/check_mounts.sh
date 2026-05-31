#!/bin/bash
echo "=== Current mounts ==="
findmnt -D
echo
echo "=== Read-only mounts ==="
findmnt -n -o TARGET,OPTIONS | grep -w ro || echo "None"
