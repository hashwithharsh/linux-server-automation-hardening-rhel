#!/bin/bash
echo "=== Disk usage ==="
df -hT | grep -v tmpfs
echo
echo "=== Inode usage ==="
df -i | grep -v tmpfs
