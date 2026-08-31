#!/bin/bash
SERVICES=("ssh" "cron")
FAILED=0
for SERVICE in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$SERVICE"; then echo "$SERVICE: running"; else echo "$SERVICE: NOT running"; FAILED=1; fi
done
exit "$FAILED"

# Return a failure code when a service is down.

# Return a failure code when a service is down.
