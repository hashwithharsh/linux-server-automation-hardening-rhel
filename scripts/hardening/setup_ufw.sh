#!/bin/bash
if [ "$EUID" -ne 0 ]; then echo "Please run with sudo."; exit 1; fi
if ! command -v ufw >/dev/null 2>&1; then echo "ufw is not installed."; exit 1; fi
ufw default deny incoming
ufw allow 22/tcp
ufw default allow outgoing
ufw allow ssh
ufw allow 80/tcp
ufw allow 443/tcp
ufw --force enable
ufw status verbose

# Allow SSH before enabling the firewall.
