#!/bin/bash
find /var/backups -name "*.tar.gz" -mtime +7 -delete
