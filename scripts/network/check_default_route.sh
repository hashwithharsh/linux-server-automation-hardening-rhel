#!/bin/bash
# Check the server's default network route.
set -u
ip route show default
