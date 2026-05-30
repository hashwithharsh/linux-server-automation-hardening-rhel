#!/bin/bash
echo "=== Memory ==="
free -h
echo
echo "=== Top memory consumers ==="
ps aux --sort=-%mem | head -8
