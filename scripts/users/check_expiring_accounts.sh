#!/bin/bash
chage -l "$1" 2>/dev/null || echo "Usage: $0 username"
