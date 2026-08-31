#!/bin/bash
CONFIG="/etc/ssh/sshd_config"
if [ ! -f "$CONFIG" ]; then echo "SSH config not found."; exit 1; fi
echo "SSH settings from $CONFIG"
grep -E '^(PermitRootLogin|PasswordAuthentication|PubkeyAuthentication)' "$CONFIG" || true
echo
echo "SSH config test:"
sshd -t && echo "OK" || echo "There is a problem with sshd_config"
