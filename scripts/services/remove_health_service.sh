#!/bin/bash
if [ "$EUID" -ne 0 ]; then echo "Please run with sudo."; exit 1; fi
systemctl disable server-health.service 2>/dev/null || true
rm -f /etc/systemd/system/server-health.service
systemctl daemon-reload
echo "Removed server-health.service"
