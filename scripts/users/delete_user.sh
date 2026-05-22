#!/bin/bash
if [ "$EUID" -ne 0 ]; then echo "Please run this script with sudo."; exit 1; fi
USERNAME="$1"
if [ -z "$USERNAME" ]; then echo "Usage: $0 username"; exit 1; fi
if ! id "$USERNAME" >/dev/null 2>&1; then echo "User not found: $USERNAME"; exit 1; fi
userdel -r "$USERNAME"
echo "User deleted: $USERNAME"
