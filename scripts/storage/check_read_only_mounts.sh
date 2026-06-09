#!/bin/bash
findmnt -n -o TARGET,OPTIONS | awk '$2 ~ /(^|,)ro(,|$)/ {print $1}'
