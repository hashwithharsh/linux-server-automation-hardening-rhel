#!/bin/bash
TO="$1"
SUBJECT="$2"
MESSAGE="$3"
if [ -z "$TO" ] || [ -z "$SUBJECT" ] || [ -z "$MESSAGE" ]; then echo "Usage: $0 email subject message"; exit 1; fi
if ! command -v mail >/dev/null 2>&1; then echo "mail command is not installed, so the alert was not sent."; exit 1; fi
echo "$MESSAGE" | mail -s "$SUBJECT" "$TO"
echo "Alert sent to $TO"
