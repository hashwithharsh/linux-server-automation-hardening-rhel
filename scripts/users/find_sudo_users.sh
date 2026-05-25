#!/bin/bash
grep -E '^[^#].*ALL' /etc/sudoers /etc/sudoers.d/* 2>/dev/null
