#!/bin/bash
echo "=== Listening TCP/UDP sockets ==="
ss -tulnp | column -t
