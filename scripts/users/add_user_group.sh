#!/bin/bash
if [ "$EUID" -ne 0 ]; then echo "Please run this script with sudo."; exit 1; fi
USERNAME="$1"
GROUP="$2"
if [ -z "$USERNAME" ] || [ -z "$GROUP" ]; then
  echo "Usage: $0 username group"
  exit 1
fi
if ! id "$USERNAME" >/dev/null 2>&1; then echo "User not found"; exit 1; fi
if ! getent group "$GROUP" >/dev/null; then echo "Group not found"; exit 1; fi
usermod -aG "$GROUP" "$USERNAME"
echo "Added $USERNAME to $GROUP"
