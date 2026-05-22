#!/bin/bash
USERNAME="$1"
userdel -r "$USERNAME"
echo "Deleted $USERNAME"
