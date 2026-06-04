#!/bin/bash
find / -xdev -type f -perm -0002 2>/dev/null | head -20
