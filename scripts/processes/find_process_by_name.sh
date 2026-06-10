#!/bin/bash
pgrep -a "$1" || echo "No process matching $1"
