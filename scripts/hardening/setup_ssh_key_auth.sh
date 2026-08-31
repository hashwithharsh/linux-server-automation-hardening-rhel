#!/bin/bash
USERNAME="$1"
PUBLIC_KEY_FILE="$2"
if [ "$EUID" -ne 0 ]; then echo "Please run with sudo."; exit 1; fi
if [ -z "$USERNAME" ] || [ -z "$PUBLIC_KEY_FILE" ]; then echo "Usage: sudo $0 username public_key_file"; exit 1; fi
if ! id "$USERNAME" >/dev/null 2>&1; then echo "User not found: $USERNAME"; exit 1; fi
if [ ! -f "$PUBLIC_KEY_FILE" ]; then echo "Public key file not found."; exit 1; fi
HOME_DIR=$(getent passwd "$USERNAME" | cut -d: -f6)
mkdir -p "$HOME_DIR/.ssh"
cat "$PUBLIC_KEY_FILE" >> "$HOME_DIR/.ssh/authorized_keys"
chown -R "$USERNAME:$USERNAME" "$HOME_DIR/.ssh"
chmod 700 "$HOME_DIR/.ssh"
chmod 600 "$HOME_DIR/.ssh/authorized_keys"
echo "SSH key added for $USERNAME"

# Set the key file permissions after copying it.

# Set the key file permissions after copying it.
