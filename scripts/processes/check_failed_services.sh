#!/bin/bash
# Quick check for services that failed to start.
set -u
systemctl --failed --no-pager
