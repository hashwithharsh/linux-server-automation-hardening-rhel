#!/bin/bash
# Check an HTTP/HTTPS endpoint and print the response code.
set -u
if [ $# -ne 1 ]; then
  echo "Usage: $0 https://example.com/health"
  exit 1
fi
if ! command -v curl >/dev/null 2>&1; then
  echo "curl is required."
  exit 1
fi
code=$(curl -L -sS -o /dev/null -w '%{http_code}' --max-time 10 "$1") || {
  echo "Request failed"
  exit 1
}
echo "HTTP status: $code"
case "$code" in
  2*|3*) exit 0 ;;
  *) exit 1 ;;
esac
