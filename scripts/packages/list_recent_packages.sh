#!/bin/bash
grep " install " /var/log/dpkg.log | tail -20
