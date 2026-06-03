#!/bin/bash
grep -E '^(PermitRootLogin|PasswordAuthentication|Port)' /etc/ssh/sshd_config
