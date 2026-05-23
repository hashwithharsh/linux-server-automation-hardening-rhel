#!/bin/bash
USERNAME="$1"
GROUP="$2"
usermod -aG "$GROUP" "$USERNAME"
