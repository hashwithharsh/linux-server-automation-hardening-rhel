#!/bin/bash
apt list --upgradable 2>/dev/null | grep -i security || echo "No security updates pending"
