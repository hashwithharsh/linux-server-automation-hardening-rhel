#!/bin/bash
if [ "$EUID" -ne 0 ]; then echo "Please run with sudo."; exit 1; fi
BASE_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
SERVICE_FILE="/etc/systemd/system/server-health.service"
cat > "$SERVICE_FILE" <<SERVICE
[Unit]
Description=Simple server health check
After=network.target

[Service]
Type=oneshot
ExecStart=$BASE_DIR/scripts/monitoring/server_health.sh
SERVICE
systemctl daemon-reload
systemctl enable server-health.service
echo "Installed server-health.service"

# Reload systemd after installing the service.

# Reload systemd after installing the service.
