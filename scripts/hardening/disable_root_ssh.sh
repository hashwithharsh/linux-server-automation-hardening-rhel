#!/bin/bash
CONFIG="/etc/ssh/sshd_config"
if [ "$EUID" -ne 0 ]; then echo "Please run with sudo."; exit 1; fi
if [ ! -f "$CONFIG" ]; then echo "SSH config not found: $CONFIG"; exit 1; fi
cp "$CONFIG" "${CONFIG}.bak-$(date +%Y%m%d%H%M%S)"
if grep -q '^PermitRootLogin' "$CONFIG"; then sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' "$CONFIG"; else echo 'PermitRootLogin no' >> "$CONFIG"; fi
sshd -t || { echo "SSH config check failed. Restoring backup."; exit 1; }
systemctl reload ssh || systemctl reload sshd
echo "Direct root SSH login is disabled."
