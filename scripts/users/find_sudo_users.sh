#!/bin/bash
echo "=== Users with sudo privileges ==="
getent group sudo | cut -d: -f4 | tr ',' '\n' | sed '/^$/d'
echo
echo "=== Entries from sudoers ==="
grep -rE '^[^#].*(ALL|NOPASSWD)' /etc/sudoers /etc/sudoers.d/ 2>/dev/null || true
