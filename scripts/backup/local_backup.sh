#!/bin/bash
SRC="$1"
DEST="/backup"
tar czf "$DEST/$(basename $SRC)-$(date +%F).tar.gz" "$SRC"
